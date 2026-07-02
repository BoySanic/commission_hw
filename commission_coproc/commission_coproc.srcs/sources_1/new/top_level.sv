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
        inout pci_express_x8_txp [7:0],
        input clock, 
        input pcie_refclk_clk_p,
        input pcie_perstn,
        output reg [2:0] led_3bits_tri_o
    );
        reg [63:0] start_seed;
        wire [63:0] produced_seed[2:0];

        filter_seeds_core fsc (
            .seed_in (start_seed),
            .clock (clock),
            .seed_out (produced_seed[0]),
            .valid (led_3bits_tri_o[0])
        );

        filter_seeds_core fsc2 (
            .seed_in (start_seed+1),
            .clock (clock),
            .seed_out (produced_seed[1]),
            .valid (led_3bits_tri_o[1])
        );

        filter_seeds_core fsc3 (
            .seed_in (start_seed+2),
            .clock (clock),
            .seed_out (produced_seed[2]),
            .valid (led_3bits_tri_o[2])
        );
        initial begin
            start_seed = 64'd0;
        end
        always @(posedge clock)  begin
            start_seed <= start_seed + 3;
        end
endmodule
