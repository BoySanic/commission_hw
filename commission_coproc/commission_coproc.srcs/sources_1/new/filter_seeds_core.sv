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
    output reg [63:0] seed_out
);
    reg  [127:0] hash_octave [2:0];
    reg  [127:0] hash_continentalness;
    reg  [127:0] seed_fork, noise_a_hi, noise_b_hi;
    reg  [127:0] noise_random[32:0];
    reg  [127:0] noise_a_yo_fork[32:0], noise_b_yo_fork[32:0];
    reg  [127:0] noise_a_fork_stages[32:0], noise_a_fork_stages[32:0];
    reg  [127:0] c_0A_yo, c_0B_yo, c_1A_yo, c_1B_yo, c_2A_yo, c_2B_yo;
    
    // 88 clocks each iirc 
    XrsrRandom_seed_fork seed_forker (
        .seed (seed_in),
        .clock (clock),
        .xoroshiro_state (seed_fork)
    );
    // 25 clocks each?
    XrsrNextInternal noiserandom_fork_lo (
	.xrsr_state_in (noise_random[0]),
	.xrsr_state_out (noise_random[1]),
	.clock (clock),
	.next_long (noise_a_fork_stages[0][63:0])
    );
    // 25 clocks each?
    XrsrNextInternal noiserandom_fork_hi (
        .xrsr_state_in (noise_random[1]),
	.xrsr_state_out (noise_random[2]),
	.clock (clock),
	.next_long (noise_a_yo_fork_stages[
    );
    initial begin
        hash_octave[0] = 128'h4e96119e22dedc81082fe255f8be6631;
        hash_octave[1] = 128'h48b6bf93a27896400ef68ec68504005e;
        hash_octave[2] = 128'h257a1d670430b0aaf11268128982754f;
        hash_continentalness = 128'h7b84cad43ef7b5a8b198de63a8012672;
    end
    
    always @(posedge clock) begin
        // seed_fork.from(hash_continentalness)
        noise_random[0] <= seed_fork ^ hash_continentalness;
    end
    
    always @(posedge clock) begin
	// Skip 25 cycles
	integer a_fork_index;
	for (a_fork_index = 1; a_fork_index < 26; a_fork_index = a_fork_index + 1) begin
       		noise_a_fork_stages[a_fork_index] <= noise_a_fork_stages[a_fork_index-1];
	end
	noise_a_fork_stages[26] <= {noise_a_hi, noise_a_fork_stages[25][63:0]};
	noise_a_yo_fork_stages[0] <= noise_a_fork_stages[26];
	noise_a_yo_fork_stages[1] // TODO: noise_yo_fork in a separate module or...?
    end
endmodule
