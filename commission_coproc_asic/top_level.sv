`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2026 12:02:52 AM
// Design Name: 
// Module Name: top_level
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


module top_level(
        input clock, 
	output [63:0] output_seed,
	output valid
    );
        reg [63:0] start_seed;
        wire [63:0] produced_seed;

        filter_seeds_core fsc (
            .seed_in (start_seed),
            .clock (clock),
            .seed_out (produced_seed),
            .valid (valid)
        );

        initial begin
            start_seed = 64'd0;
        end
        always @(posedge clock)  begin
            start_seed <= start_seed + 1;
        end
endmodule
