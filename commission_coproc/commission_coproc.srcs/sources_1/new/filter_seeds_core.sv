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
    (* mark_debug = "true" *) output reg [63:0] seed_out,
    (* mark_debug = "true" *) output reg valid
);


    localparam maxScore = 637534 * 100;
    reg  [127:0] hash_continentalness;
    reg  [127:0] seed_fork, noise_a_hi, noise_b_hi;
    reg  [127:0] noise_random[4:0];
    reg  [127:0] noise_a_yo_fork[76:0], noise_b_yo_fork[2:0];
    reg  [63:0] noise_a_fork_stages_lo[40:0], noise_a_fork_stages_hi[40:0];
    reg  [63:0] noise_b_fork_stages_lo[40:0], noise_b_fork_stages_hi[40:0];
    reg  [31:0] c_0A_yo[40:0], c_0B_yo[40:0], c_1A_yo[40:0], c_1B_yo[40:0], c_2A_yo[40:0], c_2B_yo[40:0];
    reg  [31:0] c_0A_mask, c_0B_mask, c_1A_mask, c_1B_mask, c_2A_mask, c_2B_mask;

    reg  [63:0] prop_seed [300:0];
    initial begin
        integer index;
        seed_fork = 128'd0;
        noise_a_hi = 128'd0;
        noise_b_hi = 128'd0;
       
        
        c_0A_mask = 32'd0;
        c_1A_mask = 32'd0;
        c_2A_mask = 32'd0;
        c_0B_mask = 32'd0;
        c_1B_mask = 32'd0;
        c_2B_mask = 32'd0;
        for (index = 0; index < 100; index = index + 1) begin
            noise_random[index] = 128'd0;
            noise_a_yo_fork[index] = 128'd0;
            noise_b_yo_fork[index] = 128'd0;
            noise_a_fork_stages_lo[index] = 64'd0;
            noise_a_fork_stages_hi[index] = 64'd0;
            noise_b_fork_stages_lo[index] = 64'd0;
            noise_b_fork_stages_hi[index] = 64'd0;
            c_0A_yo[index] = 32'd0;
            c_1A_yo[index] = 32'd0;
            c_2A_yo[index] = 32'd0;
            c_0B_yo[index] = 32'd0;
            c_1B_yo[index] = 32'd0;
            c_2B_yo[index] = 32'd0;
        end
    end
    // 88 clocks each iirc 
    XrsrRandom_seed_fork seed_forker (
        .seed (seed_in),
        .clock (clock),
        .xoroshiro_state (seed_fork)
    );
    // 25 clocks each?
    XrsrNextInternal noiserandom_a_nextInternalLo (
        .xrsr_state_in (noise_random[0]),
        .xrsr_state_out (noise_random[1]),
        .clock (clock),
        .next_long (noise_a_fork_stages_lo[0])
    );
    // 25 clocks each?
    XrsrNextInternal noiserandom_a_nextInternalHi (
        .xrsr_state_in (noise_random[1]),
        .xrsr_state_out (noise_random[2]),
        .clock (clock),
        .next_long (noise_a_fork_stages_hi[0])
    );
    // 25 clocks each?
    XrsrNextInternal noiserandom_b_nextInternalLo (
        .xrsr_state_in (noise_random[2]),
        .xrsr_state_out (noise_random[3]),
        .clock (clock),
        .next_long (noise_b_fork_stages_lo[0])
    );
    // 25 clocks each?
    XrsrNextInternal noiserandom_b_nextInternalHi (
        .xrsr_state_in (noise_random[3]),
        .xrsr_state_out (noise_random[4]),
        .clock (clock),
        .next_long (noise_b_fork_stages_hi[0])
    );
    
    noise_yo_fork nyf_a (
        .noise_fork_in (noise_a_yo_fork[75]),
        .ret (noise_a_yo_fork[76]),
        .clock (clock)
    );
    
    noise_yo_fork nyf_b (
        .noise_fork_in (noise_b_yo_fork[0]),
        .ret (noise_b_yo_fork[1]),
        .clock (clock)
    );

    octave_yo_mod1 oym_0a (
        .noise_yo_fork (noise_a_yo_fork[76]),
        .clock (clock),
        .octave (2'd0),
        .score_yo_mama (c_0A_yo[0])
    );

    octave_yo_mod1 oym_1a (
    
        .noise_yo_fork (noise_a_yo_fork[76]),
        .clock (clock),
        .octave (2'd1),
        .score_yo_mama (c_1A_yo[0])
    );

    octave_yo_mod1 oym_2a (
    
        .noise_yo_fork (noise_a_yo_fork[76]),
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
    end
    
    always @(posedge clock) begin
        // seed_fork.from(hash_continentalness)
        noise_random[0] <= seed_fork ^ hash_continentalness;
        prop_seed[0] <= seed_in;
    end
    
    always @(posedge clock) begin
        // Skip 25 cycles
        integer a_fork_index;
        integer a_yo_fork_index;
        integer b_fork_index;
        integer mask_index;
        integer seed_index;
        for (seed_index = 1; seed_index < 274; seed_index = seed_index + 1) begin
            prop_seed[seed_index] <= prop_seed[seed_index-1];
        end
        seed_out <= prop_seed[273];
        for (a_fork_index = 1; a_fork_index < 26; a_fork_index = a_fork_index + 1) begin
            noise_a_fork_stages_lo[a_fork_index] <= noise_a_fork_stages_lo[a_fork_index-1];
        end
        noise_a_yo_fork[0] <= {noise_a_fork_stages_hi[0], noise_a_fork_stages_lo[25]};
        
        // Skip 75 cycles for b to catch up
        for (a_yo_fork_index = 1; a_yo_fork_index < 76; a_yo_fork_index = a_yo_fork_index + 1) begin
            noise_a_yo_fork[a_yo_fork_index] <= noise_a_yo_fork[a_yo_fork_index-1];
        end
        // Skip 25 cycles for b_hi to catch up to b_lo
        for (b_fork_index = 1; b_fork_index < 26; b_fork_index = b_fork_index + 1) begin
            noise_b_fork_stages_lo[b_fork_index] <= noise_b_fork_stages_lo[b_fork_index-1];
        end
        
        noise_b_yo_fork[0] <= {noise_b_fork_stages_hi[0], noise_b_fork_stages_lo[25]};
        
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
        c_0A_yo[6] <= c_0A_yo[5];
        c_0A_yo[7] <= c_0A_yo[6];
        c_0A_yo[8] <= c_0A_yo[7];
        c_0A_yo[9] <= c_0A_yo[8];
        c_0A_yo[10] <= c_0A_yo[9];
        c_0A_yo[11] <= c_0A_yo[10];
        c_0A_yo[12] <= c_0A_yo[11];
        c_0A_yo[13] <= c_0A_yo[12];
        c_0A_yo[14] <= c_0A_yo[13];
        c_0A_yo[15] <= c_0A_yo[14];
        c_0A_yo[16] <= c_0A_yo[15];
        c_0A_yo[17] <= c_0A_yo[16];
        c_0A_yo[18] <= c_0A_yo[17];
        c_0A_yo[19] <= c_0A_yo[18];
        c_0A_yo[20] <= c_0A_yo[19];
        c_0A_yo[21] <= c_0A_yo[20];
        c_0A_yo[22] <= c_0A_yo[21];
        c_0A_yo[23] <= c_0A_yo[22];
        c_0A_yo[24] <= c_0A_yo[23];
        c_0A_yo[25] <= c_0A_yo[24];
        c_0A_yo[26] <= c_0A_yo[25];
        c_0A_yo[27] <= c_0A_yo[26];
        c_0A_yo[28] <= c_0A_yo[27];
        c_0A_yo[29] <= c_0A_yo[28];
        c_0A_yo[30] <= c_0A_yo[29];
        c_0A_yo[31] <= c_0A_yo[30];
        c_0A_yo[32] <= c_0A_yo[31];
        c_0A_yo[33] <= c_0A_yo[32];
        c_0A_yo[34] <= c_0A_yo[33];
        c_0A_yo[35] <= c_0A_yo[34];
        if (c_0A_yo[35] > maxScore) begin
            valid <= 0;
        end else begin
            valid <= 1;
        end
    end
    
    
    always @(posedge clock) begin
        
    end
    initial begin
        seed_out = 64'd0;
    end
endmodule
