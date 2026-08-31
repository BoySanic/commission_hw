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

const longint XRSR_MIX1 = 64'hbf58476d1ce4e5b9;
const longint XRSR_MIX2 = 64'h94d049bb133111eb;
const longint XRSR_MIX1_INVERSE = 64'h96de1b173f119089;
const longint XRSR_MIX2_INVERSE = 64'h319642b2d24d8ec3;
const longint XRSR_SILVER_RATIO = 64'h6a09e667f3bcc909;
const longint XRSR_GOLDEN_RATIO = 64'h9e3779b97f4a7c15;

module XrsrRandom_seed_fork(
    input [63:0] seed,
    input clock,
    (* mark_debug = "true" *)  output reg [127:0] xoroshiro_state    
);
    reg [63:0] h_stages[17:0];
    reg [63:0] h2_stages[2:0];
    reg [63:0] l_stages[19:0];
    reg [63:0] l2_stages[12:0];
    reg [63:0] r1_stages[23:0];
    reg [63:0] r2_stages[4:0];

    reg [63:0] seed_init, lh, l2h2;
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
        // Delay, h has an extra add
        l_stages[6] <= l_stages[5];
        l_stages[7] <= l_stages[6];
        l_stages[8] <= l_stages[7];
        l_stages[9] <= l_stages[8];
        l_stages[10] <= l_stages[9];
        l_stages[11] <= l_stages[10];
        
        // Delay for add_l_plus_h
        l_stages[12] <= l_stages[11];
        l_stages[13] <= l_stages[12];
        l_stages[14] <= l_stages[13];
        l_stages[15] <= l_stages[14];
        l_stages[16] <= l_stages[15];
        l_stages[17] <= l_stages[16];
        // Delay for lh rotl
        l_stages[18] <= l_stages[17];
        l_stages[19] <= l_stages[18];
        // Use l_stages[19] in l2's rotl and then we're done with l_stages. Move onto l2_stages.
        // xor with h

        l2_stages[3] <= l2_stages[2] ^ h_stages[16] ^ (h_stages[16] << 21);
        // Delay 6 clocks for the add
        l2_stages[4] <= l2_stages[3];
        l2_stages[5] <= l2_stages[4];
        l2_stages[6] <= l2_stages[5];
        l2_stages[7] <= l2_stages[6];
        l2_stages[8] <= l2_stages[7];
        l2_stages[9] <= l2_stages[8];
        // Delay 2 clocks for the rotl
        l2_stages[10] <= l2_stages[9];
        l2_stages[11] <= l2_stages[10];
        
    end
    
    always @(posedge clock) begin
        // Delay for add_l_plus_h
        h_stages[7] <= h_stages[6];
        h_stages[8] <= h_stages[7];
        h_stages[9] <= h_stages[8];
        h_stages[10] <= h_stages[9];
        h_stages[11] <= h_stages[10];
        h_stages[12] <= h_stages[11];
        // Delay for lh rotl
        h_stages[13] <= h_stages[12];
        h_stages[14] <= h_stages[13];
        // Xor with l_stages[19], then delay 1 extra cycle for xor with l2 stuff.
        h_stages[15] <= h_stages[14] ^ l_stages[19];
        h_stages[16] <= h_stages[15];
        
    end
    
    // Delaying r1_stages
    always @(posedge clock) begin
        // stages[2] -> stages[3] via the add took 6 clocks.
        // Clock count: 
        // Delay However many clocks between r1 finished and r2 finished..?
        r1_stages[4] <= r1_stages[3];
        r1_stages[5] <= r1_stages[4];
        r1_stages[6] <= r1_stages[5];
        r1_stages[7] <= r1_stages[6];
        r1_stages[8] <= r1_stages[7];
        r1_stages[9] <= r1_stages[8];
        r1_stages[10] <= r1_stages[9];
        r1_stages[11] <= r1_stages[10];
        r1_stages[12] <= r1_stages[11];
        r1_stages[13] <= r1_stages[12];
        r1_stages[14] <= r1_stages[13];
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
    
    
    initial begin
        integer index;
        
        for (index = 0; index < 17; index = index + 1) begin
               h_stages[index] = 0;
        end
        for (index = 0; index < 4; index = index + 1) begin
               h2_stages[index] = 0;
        end
        for (index = 0; index < 20; index = index + 1) begin
               l_stages[index] = 0;
        end
        for (index = 0; index < 13; index = index + 1) begin
               l2_stages[index] = 0;
        end
        for (index = 0; index < 30; index = index + 1) begin
               r1_stages[index] = 0;
        end
        for (index = 0; index < 5; index = index + 1) begin
               l2_stages[index] = 0;
        end
        seed_init = 64'd0;
        lh = 64'd0;
        l2h2 = 64'd0;
        xoroshiro_state = 128'd0;
    end
endmodule
