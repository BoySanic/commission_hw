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
    wire [63:0] nl;
     
    XrsrNextInternal ni_core (
        .xrsr_state_in (xr_state),
        .clock (clk),
        .next_long (nl),
        .xrsr_state_out (xr_state_out)
    
    );
    task test1();
        #10;
        xr_state = 128'h6627ee9e27b8f0e978bafb00158517e;
    endtask

    initial begin
    
        clk = 0;
        xr_state = 128'd0;
        test1();
    end
    
    
    always begin
        #5 clk = ~clk;
    end
endmodule
