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
        clock = 0;
        fork_hash = 128'h6e3a4a1667fde9767eadbbf4389da18d;
        #10;
        fork_hash = 128'hda79ec42f3cdee7ad3dffd0bccd140cc;
        #10;
        fork_hash = 128'h59651d1e4a25b261191041b2f2da03b4;
    end
    
    always begin
        #5 clock = ~clock;
    end
endmodule
