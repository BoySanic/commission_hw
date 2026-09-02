`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2026 05:15:59 PM
// Design Name: 
// Module Name: XrsrRandom_seed_fork
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

localparam XRSR_MIX1 = 64'hbf58476d1ce4e5b9;
localparam XRSR_MIX2 = 64'h94d049bb133111eb;
localparam XRSR_MIX1_INVERSE = 64'h96de1b173f119089;
localparam XRSR_MIX2_INVERSE = 64'h319642b2d24d8ec3;
localparam XRSR_SILVER_RATIO = 64'h6a09e667f3bcc909;
localparam XRSR_GOLDEN_RATIO = 64'h9e3779b97f4a7c15;

module XrsrRandom_seed_fork(
    input [63:0] seed,
    input clock,
    (* mark_debug = "true" *)  output reg [127:0] xoroshiro_state    
);
    reg [63:0] h_stages[16:0];
    reg [63:0] h2_stages[2:0];
    reg [63:0] l_stages[19:0];
    reg [63:0] l2_stages[11:0];
    reg [63:0] r1_stages[14:0];
    reg [63:0] r2_stages[3:0];

    reg [63:0] seed_init, lh, l2h2;
    integer i;
    // 18 cycles
    mix1_multiplier mix64_1_l (
        .A (l_stages[1]),
        .P (l_stages[2]),
        .CLK (clock)
    );
    // 18 cycles
    mix2_multiplier mix64_2_l (
    
        .A (l_stages[3]),
        .P (l_stages[4]),
        .CLK (clock)
    );
    // 18 cycles
    mix1_multiplier mix64_1_h (
        .A (h_stages[2]),
        .P (h_stages[3]),
        .CLK (clock)
    );
    // 18 cycles
    mix2_multiplier mix64_2_h (
        .A (h_stages[4]),
        .P (h_stages[5]),
        .CLK (clock)
    );

    // 6 cycles
    add_goldenratio mix64_gr_1 (
        .A (h_stages[0]),
        .S (h_stages[1]),
        .CLK (clock),
        .CE (1)
    );
    // 6 cycles
    add_u64 add_l_plus_h (
        .A (l_stages[11]),
        .B (h_stages[6]),
        .S (lh),
        .CLK (clock),
        .CE (1)
    );
    // 6 cycles
    add_u64 add_l_to_r1 (
        .A (r1_stages[2]),
        .B (l_stages[19]),
        .S (r1_stages[3]),
        .CLK (clock),
        .CE (1)
    );
    
    add_u64 add_l2_to_h2 (
        .A (h2_stages[2]),
        .B (l2_stages[3]),
        .S (l2h2),
        .CLK (clock),
        .CE (1)
    );
    add_u64 add_l2_to_r2 (
        .A (l2_stages[11]),
        .B (r2_stages[2]),
        .S (r2_stages[3]),
        .CLK (clock),
        .CE (1)
    );
    always @(posedge clock) begin
        //  seed ^= XrsrRandom::XRSR_SILVER_RATIO;
        seed_init <= seed ^ XRSR_SILVER_RATIO;
        l_stages[0] <= seed_init;
        h_stages[0] <= seed_init;
        
        xoroshiro_state[63:0] <= r1_stages[14];
        xoroshiro_state[127:64] <= r2_stages[3];
    end
    
    // Carry forward l
    
    always @(posedge clock) begin
        for (i = 6; i <= 19; i = i + 1)
            l_stages[i] <= l_stages[i-1];

        l2_stages[3] <= l2_stages[2] ^ h_stages[16] ^ (h_stages[16] << 21);
        for (i = 4; i <= 11; i = i + 1)
            l2_stages[i] <= l2_stages[i-1];
    end
    
    always @(posedge clock) begin
        for (i = 7; i <= 14; i = i + 1)
            h_stages[i] <= h_stages[i-1];
        h_stages[15] <= h_stages[14] ^ l_stages[19];
        h_stages[16] <= h_stages[15];
    end
    
    always @(posedge clock) begin
        for (i = 4; i <= 14; i = i + 1)
            r1_stages[i] <= r1_stages[i-1];
    end
    // Mix64 for l 
    always @(posedge clock) begin
        l_stages[1] <= l_stages[0] ^ (l_stages[0] >> 30);
        l_stages[3] <= l_stages[2] ^ (l_stages[2] >> 27);
        l_stages[5] <= l_stages[4] ^ (l_stages[4] >> 31);
    end
    
    // Mix64 for h
    always @(posedge clock) begin
        h_stages[2] <= h_stages[1] ^ h_stages[1] >> 30;
        h_stages[4] <= h_stages[3] ^ h_stages[3] >> 27;
        h_stages[6] <= h_stages[5] ^ h_stages[5] >> 31;
    end
    
    // first rol64 (r1)
    // h_stages[12], l_stages[17]
    always @(posedge clock) begin
        r1_stages[0] <= lh << 17;
        r1_stages[1] <= lh >> 47;
        r1_stages[2] <= r1_stages[0] | r1_stages[1];
    end
    
    // Second rol64 (l2)
    // l_stages[20], h_stages[16]
    // But this could happen anytime after... l_stages[20]?
    // It should be done 2 cycles before it's needed, though, for space efficiency.
    // l isn't used after this point, so, I guess it doesn't super matter as long as it's done 2 cycles before it's needed.
    always @(posedge clock) begin
        l2_stages[0] <= l_stages[19] << 49;
        l2_stages[1] <= l_stages[19] >> 15;
        l2_stages[2] <= l2_stages[0] | l2_stages[1];
    end
    
    // Third rol64 (h2)
    // Using h_stages[16] as that's after the xor
    // Technically we need to only wait one more cycle if e use 16 instead of 17... Does that put us out of sync?
    always @(posedge clock) begin
        h2_stages[0] <= h_stages[15] << 28;
        h2_stages[1] <= h_stages[15] >> 36;
        h2_stages[2] <= h2_stages[0] | h2_stages[1];
    end
    
    //Final rotl
    always @(posedge clock) begin
        r2_stages[0] <= l2h2 << 17;
        r2_stages[1] <= l2h2 >> 47;
        r2_stages[2] <= r2_stages[0] | r2_stages[1];
    end

endmodule
