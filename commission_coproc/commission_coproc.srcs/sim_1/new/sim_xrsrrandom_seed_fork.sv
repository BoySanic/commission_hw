`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2026 03:56:17 PM
// Design Name: 
// Module Name: sim_xrsrrandom_seed_fork
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


module sim_xrsrrandom_seed_fork(

    );
    
    reg [63:0] input_seed;
    reg CLK;
    wire [127:0] xrsr_state;
    XrsrRandom_seed_fork core (
        .seed (input_seed),
        .clock (CLK),
        .xoroshiro_state (xrsr_state)
    );
    
    task test1;
        input_seed = 64'd8798644962863425869;
        @(negedge CLK);
        input_seed = 64'd1234;
        @(negedge CLK);
        input_seed = 64'd2446138407026763098;
        @(negedge CLK);
    endtask
    initial begin
    
        CLK = 0;
        test1();
        
    end
    always begin
        #5 CLK = ~CLK;
    end
endmodule
