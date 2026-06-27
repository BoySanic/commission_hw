`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/27/2026 12:31:18 AM
// Design Name: 
// Module Name: sim_filter_seeds_core
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


module sim_filter_seeds_core();

    reg [63:0] input_seed;
    reg clock;
    wire valid;
    wire [63:0] output_seed;
    
    filter_seeds_core fsc (
        .seed_in (input_seed),
        .clock (clock),
        .seed_out (output_seed),
        .valid (valid)
    );
    initial begin
        input_seed = 64'd8798644962863425869;
        clock = 0;
    end
    
    always begin
        #5 clock = ~clock;
    end
endmodule
