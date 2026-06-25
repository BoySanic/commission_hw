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
    reg  [127:0] seed_fork, noise_random;
    reg  [127:0] noise_a_yo_fork, noise_b_yo_fork;
    reg  [127:0] noise_a_fork_stages[32:0], noise_a_fork_stages[32:0];
    reg  [127:0] c_0A_yo, c_0B_yo, c_1A_yo, c_1B_yo, c_2A_yo, c_2B_yo;
    
    XrsrRandom_seed_fork seed_forker (
        .seed (seed_in),
        .clock (clock),
        .xoroshiro_state (seed_fork)
    );
    initial begin
        hash_octave[0] = 128'h4e96119e22dedc81082fe255f8be6631;
        hash_octave[1] = 128'h48b6bf93a27896400ef68ec68504005e;
        hash_octave[2] = 128'h257a1d670430b0aaf11268128982754f;
        hash_continentalness = 128'h7b84cad43ef7b5a8b198de63a8012672;
    end
    
    always @(posedge clock) begin
        // seed_fork.from(hash_continentalness)
        noise_random <= seed_fork ^ hash_continentalness;
    end
    
    always @(posedge clock) begin
        noise_a_fork_stages[0] = 
    end
endmodule
