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
    input [63:0] start_seed,
    input reset,
    output [63:0] output_seed,
    output valid
    );
        reg [63:0] next_seed;
        reg [63:0] provided_seed;
        filter_seeds_core fsc (
            .seed_in (next_seed),
            .clock (clock),
            .seed_out (output_seed),
            .valid (valid)
        );
    
    always @(posedge clock) begin
        if (reset) begin
            next_seed <= start_seed;
        end else begin
            next_seed <= next_seed + 64'd1;
        end
    end
endmodule
