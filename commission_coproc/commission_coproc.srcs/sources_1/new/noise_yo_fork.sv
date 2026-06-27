`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2026 08:45:32 PM
// Design Name: 
// Module Name: noise_yo_fork
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


module noise_yo_fork(
    input [127:0] noise_fork_in,
    input clock,
    output reg [127:0] ret
    );
    
    reg [127:0] l_states [32:0];
    reg [127:0] h_states [32:0];
    reg [127:0] hi_states [32:0];
    reg [127:0] lo_states [32:0];
    
    always @(posedge clock) begin
        l_states[0] <= noise_fork_in[63:0];
        h_states[0] <= noise_fork_in[127:64];
        
        // skip r (h ^= l)
        h_states[1] <= h_states[0] ^ l_states[0];
        h_states[2] <= h_states[1]; // lo_states is done
        h_states[3] <= h_states[2]; // hi_states is done
        
        // hi_states[2] is where the rol64 is finished.
        // lo_states is 1 clock ahead of hi_states, so delay by 1 clock
        lo_states[3] <= lo_states[2];
        // Output
        ret[63:0] <= lo_states[3] ^ h_states[3] ^ (h_states[3] << 21);
        ret[127:064] <= hi_states[2];
    end
    
    
    // hi rol64
    
    always @(posedge clock) begin
        hi_states[0] <= h_states[1] << 28;
        hi_states[1] <= h_states[1] >> 36;
        hi_states[2] <= hi_states[0] | hi_states[1];
    end
    
    // lo rol64
    
    always @(posedge clock) begin
        lo_states[0] <= l_states[0] << 49;
        lo_states[1] <= l_states[0] >> 15;
        lo_states[2] <= lo_states[0] | lo_states[1];
    end
endmodule
