`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2026 11:04:59 AM
// Design Name: 
// Module Name: sim_octave_yo_mod1
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


module sim_octave_yo_mod1;

    reg clock;
    reg [127:0] fork_hash;
    wire [31:0] output_score;
    octave_yo_mod1 modder_kek (
        .noise_yo_fork (fork_hash),
        .octave (2'd0),
        .score_yo_mama (output_score),
        .clock (clock)
    );
    
    initial begin
        fork_hash = 128'h6e3a4a1667fde9767eadbbf4389da18d;
        clock = 0;
    end
    
    always begin
        #5 clock = ~clock;
    end
endmodule
