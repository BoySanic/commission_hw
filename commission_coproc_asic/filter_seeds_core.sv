`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2026 05:10:58 PM
// Design Name: 
// Module Name: filter_seeds_core
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

module filter_seeds_core(
    input [63:0] seed_in,
    input clock,
    output reg [63:0] seed_out,
    output reg valid
);


    localparam maxScore = 637534 * 100;
    reg  [127:0] hash_continentalness;
    reg  [127:0] seed_fork;
    reg  [127:0] noise_random[4:0];
    reg  [127:0] noise_a_yo_fork[37:0], noise_b_yo_fork[2:0];
    reg  [63:0] noise_a_fork_stages_lo[18:0], noise_a_fork_stages_hi[18:0];
    reg  [63:0] noise_b_fork_stages_lo[18:0], noise_b_fork_stages_hi[18:0];
    reg  [31:0] c_0A_yo[35:0], c_0B_yo[35:0], c_1A_yo[35:0], c_1B_yo[35:0], c_2A_yo[35:0], c_2B_yo[35:0];
    reg  [31:0] c_0A_mask, c_0B_mask, c_1A_mask, c_1B_mask, c_2A_mask, c_2B_mask;

    reg  [63:0] prop_seed [0:255];
    reg  [7:0]  wr_ptr;
    reg  [7:0]  rd_ptr;

    // 88 clocks each iirc 
    XrsrRandom_seed_fork seed_forker (
        .seed (seed_in),
        .clock (clock),
        .xoroshiro_state (seed_fork)
    );
    // 18 clocks each?
    XrsrNextInternal noiserandom_a_nextInternalLo (
        .xrsr_state_in (noise_random[0]),
        .xrsr_state_out (noise_random[1]),
        .clock (clock),
        .next_long (noise_a_fork_stages_lo[0])
    );
    // 18 clocks each?
    XrsrNextInternal noiserandom_a_nextInternalHi (
        .xrsr_state_in (noise_random[1]),
        .xrsr_state_out (noise_random[2]),
        .clock (clock),
        .next_long (noise_a_fork_stages_hi[0])
    );
    // 18 clocks each?
    XrsrNextInternal noiserandom_b_nextInternalLo (
        .xrsr_state_in (noise_random[2]),
        .xrsr_state_out (noise_random[3]),
        .clock (clock),
        .next_long (noise_b_fork_stages_lo[0])
    );
    // 18 clocks each?
    XrsrNextInternal noiserandom_b_nextInternalHi (
        .xrsr_state_in (noise_random[3]),
        .xrsr_state_out (noise_random[4]),
        .clock (clock),
        .next_long (noise_b_fork_stages_hi[0])
    );
    // 3 clocks
    noise_yo_fork nyf_a (
        .noise_fork_in (noise_a_yo_fork[36]),
        .ret (noise_a_yo_fork[37]),
        .clock (clock)
    );
    
    noise_yo_fork nyf_b (
        .noise_fork_in (noise_b_yo_fork[0]),
        .ret (noise_b_yo_fork[1]),
        .clock (clock)
    );

    octave_yo_mod1 oym_0a (
        .noise_yo_fork (noise_a_yo_fork[37]),
        .clock (clock),
        .octave (2'd0),
        .score_yo_mama (c_0A_yo[0])
    );

    octave_yo_mod1 oym_1a (
    
        .noise_yo_fork (noise_a_yo_fork[37]),
        .clock (clock),
        .octave (2'd1),
        .score_yo_mama (c_1A_yo[0])
    );

    octave_yo_mod1 oym_2a (
    
        .noise_yo_fork (noise_a_yo_fork[37]),
        .clock (clock),
        .octave (2'd2),
        .score_yo_mama (c_2A_yo[0])
    );

    octave_yo_mod1 oym_0b (
        .noise_yo_fork (noise_b_yo_fork[1]),
        .clock (clock),
        .octave (2'd0),
        .score_yo_mama (c_0B_yo[0])
    );

    octave_yo_mod1 oym_1b (
    
        .noise_yo_fork (noise_b_yo_fork[1]),
        .clock (clock),
        .octave (2'd1),
        .score_yo_mama (c_1B_yo[0])
    );

    octave_yo_mod1 oym_2b (
    
        .noise_yo_fork (noise_b_yo_fork[1]),
        .clock (clock),
        .octave (2'd2),
        .score_yo_mama (c_2B_yo[0])
    );
    
    
    sub_i32 sub_0a (
        .A (c_0A_yo[0]),
        .B (32'd8388608),
        .S (c_0A_yo[1]),
        .CE (1),
        .CLK (clock)
    );
    sub_i32 sub_1a (
        .A (c_1A_yo[0]),
        .B (32'd8388608),
        .S (c_1A_yo[1]),
        .CE (1),
        .CLK (clock)
    );
    sub_i32 sub_2a (
        .A (c_2A_yo[0]),
        .B (32'd8388608),
        .S (c_2A_yo[1]),
        .CE (1),
        .CLK (clock)
    );
    sub_i32 sub_0b (
        .A (c_0B_yo[0]),
        .B (32'd8388608),
        .S (c_0B_yo[1]),
        .CE (1),
        .CLK (clock)
    );
    sub_i32 sub_1b (
        .A (c_1B_yo[0]),
        .B (32'd8388608),
        .S (c_1B_yo[1]),
        .CE (1),
        .CLK (clock)
    );
    sub_i32 sub_2b (
        .A (c_2B_yo[0]),
        .B (32'd8388608),
        .S (c_2B_yo[1]),
        .CE (1),
        .CLK (clock)
    );

    mul_u32 mul_35_0a (
        .A (c_0A_yo[2]),
        .B (32'd35),
        .P (c_0A_yo[3]),
        .CLK (clock),
        .CE (1)
    );
    mul_u32 mul_35_0b (
        .A (c_0B_yo[2]),
        .B (32'd35),
        .P (c_0B_yo[3]),
        .CLK (clock),
        .CE (1)
    );
    mul_u32 mul_11_1a (
        .A (c_1A_yo[2]),
        .B (32'd11),
        .P (c_1A_yo[3]),
        .CLK (clock),
        .CE (1)
    );
    mul_u32 mul_11_1b (
        .A (c_1B_yo[2]),
        .B (32'd11),
        .P (c_1B_yo[3]),
        .CLK (clock),
        .CE (1)
    );
    mul_u32 mul_4_2a (
        .A (c_2A_yo[2]),
        .B (32'd4),
        .P (c_2A_yo[3]),
        .CLK (clock),
        .CE (1)
    );
    mul_u32 mul_4_2b (
        .A (c_2B_yo[2]),
        .B (32'd4),
        .P (c_2B_yo[3]),
        .CLK (clock),
        .CE (1)
    );
    add_u32 add_0a_0b (
        .A (c_0A_yo[3]),
        .B (c_0B_yo[3]),
        .S (c_0A_yo[4]),
        .CLK (clock),
        .CE (1)
    );
    add_u32 add_1a_1b (
        .A (c_1A_yo[3]),
        .B (c_1B_yo[3]),
        .S (c_1A_yo[4]),
        .CLK (clock),
        .CE (1)
    );
    add_u32 add_2a_2b (
        .A (c_2A_yo[3]),
        .B (c_2B_yo[3]),
        .S (c_2A_yo[4]),
        .CLK (clock),
        .CE (1)
    );

    initial begin
        hash_continentalness = 128'hafa638a61b42e8ad83886c9d0ae3a662;
        wr_ptr = 8'd0;
        rd_ptr = 8'd0;
        valid = 1'b0;
    end
    
    always @(posedge clock) begin
        noise_random[0] <= seed_fork ^ hash_continentalness;
    end
    
    always @(posedge clock) begin
        integer a_fork_index;
        integer a_yo_fork_index;
        integer b_fork_index;
        integer mask_index;
        integer seed_index;
        integer i;
        
        prop_seed[wr_ptr] <= seed_in;
        wr_ptr <= wr_ptr + 8'd1;
        rd_ptr <= wr_ptr - 8'd210;
        seed_out <= prop_seed[rd_ptr];
        
        // Skip 18 cycles
        for (a_fork_index = 1; a_fork_index < 19; a_fork_index = a_fork_index + 1) begin
            noise_a_fork_stages_lo[a_fork_index] <= noise_a_fork_stages_lo[a_fork_index-1];
        end
        noise_a_yo_fork[0] <= {noise_a_fork_stages_hi[0], noise_a_fork_stages_lo[18]};
        
        // Skip 75 cycles for b to catch up why??????? 2 nextInternals = 36 cycles...? Used to think it was 50....?
        // Where did 75 come from...
        // Skipping 36 - 18 for each nextInternal
        for (a_yo_fork_index = 1; a_yo_fork_index < 37; a_yo_fork_index = a_yo_fork_index + 1) begin
            noise_a_yo_fork[a_yo_fork_index] <= noise_a_yo_fork[a_yo_fork_index-1];
        end
        // Skip 18 cycles for b_hi to catch up to b_lo
        for (b_fork_index = 1; b_fork_index < 19; b_fork_index = b_fork_index + 1) begin
            noise_b_fork_stages_lo[b_fork_index] <= noise_b_fork_stages_lo[b_fork_index-1];
        end
        
        noise_b_yo_fork[0] <= {noise_b_fork_stages_hi[0], noise_b_fork_stages_lo[18]};
        
        if (c_0A_yo[1][31] == 1) begin
            c_0A_yo[2] <= -c_0A_yo[1];
        end else begin
            c_0A_yo[2] <= c_0A_yo[1];
        end

        if (c_0B_yo[1][31] == 1) begin
            c_0B_yo[2] <= -c_0B_yo[1];
        end else begin
            c_0B_yo[2] <= c_0B_yo[1];
        end

        if (c_1A_yo[1][31] == 1) begin
            c_1A_yo[2] <= -c_1A_yo[1];
        end else begin
            c_1A_yo[2] <= c_1A_yo[1];
        end

        if (c_1B_yo[1][31] == 1) begin
            c_1B_yo[2] <= -c_1B_yo[1];
        end else begin
            c_1B_yo[2] <= c_1B_yo[1];
        end

        if (c_2A_yo[1][31] == 1) begin
            c_2A_yo[2] <= -c_2A_yo[1];
        end else begin
            c_2A_yo[2] <= c_2A_yo[1];
        end

        if (c_2B_yo[1][31] == 1) begin
            c_2B_yo[2] <= -c_2B_yo[1];
        end else begin
            c_2B_yo[2] <= c_2B_yo[1];
        end
//        // Skip 0a/1a add
//        c_2A_yo[7] <= c_2A_yo[6];
//        c_2A_yo[8] <= c_2A_yo[7];
//        c_2A_yo[9] <= c_2A_yo[8];
//        c_2A_yo[10] <= c_2A_yo[9];
//        c_2A_yo[11] <= c_2A_yo[10];
//        c_2A_yo[12] <= c_2A_yo[11];
        c_0A_yo[5] <= c_0A_yo[4] + c_1A_yo[4] + c_2A_yo[4];
        for (i = 6; i <= 35; i = i + 1)
            c_0A_yo[i] <= c_0A_yo[i-1];
        if (c_0A_yo[35] > maxScore) begin
            valid <= 0;
        end else begin
            valid <= 1;
        end
    end
endmodule
