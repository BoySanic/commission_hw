`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2026 10:53:26 PM
// Design Name: 
// Module Name: sim_nextInternal
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


module sim_nextInternal();

    reg clk;
    reg [127:0] xr_state;
    wire [127:0] xr_state_out;
    wire [127:0] a_xr_state;
    wire [63:0] nl, nl2;
     
    XrsrNextInternal ni_core (
        .xrsr_state_in (xr_state),
        .clock (clk),
        .next_long (nl),
        .xrsr_state_out (xr_state_out)
    
    );
    XrsrNextInternal ni_core2 (
        .xrsr_state_in (xr_state_out),
        .xrsr_state_out (a_xr_state),
        .clock (clk),
        .next_long (nl2)
    );
    initial begin
        clk = 0;
        xr_state = 128'hd40fdb435240627c8ce2344d519734f3;
    end
    
    
    always begin
        #5 clk = ~clk;
    end
endmodule
