`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2026 09:34:27 PM
// Design Name: 
// Module Name: XrsrNextInternal
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


module XrsrNextInternal(
        input [127:0] xrsr_state_in,
        input clock,
        (* mark_debug = "true" *) output reg [63:0] next_long,
        (* mark_debug = "true" *) output reg [127:0] xrsr_state_out
    );
        reg [63:0] l_stages [32:0];
        reg [63:0] h_stages [32:0];
        reg [63:0] l2_stages [32:0];
        reg [63:0] h2_stages [1:0];
        reg [63:0] r_stages [32:0];
        reg [63:0] lh;
    add_u64 add_lh (
        .A(l_stages[0]),
        .B(h_stages[0]),
        .S(lh),
        .CLK(clock),
        .CE(1)
    );
    
    add_u64 add_lr (
        .A(l_stages[8]),
        .B(r_stages[2]),
        .S(r_stages[3]),
        .CLK(clock),
        .CE(1)
    );
    always @(posedge clock) begin
        l_stages[0] <= xrsr_state_in[63:0];
        h_stages[0] <= xrsr_state_in[127:64];
        
        // Skip lh add (all 6 cycles)
        l_stages[1] <= l_stages[0];
        l_stages[2] <= l_stages[1];
        l_stages[3] <= l_stages[2];
        l_stages[4] <= l_stages[3];
        l_stages[5] <= l_stages[4];
        l_stages[6] <= l_stages[5];
        
        // Skip 2 cycles of rol64
        l_stages[7] <= l_stages[6];
        l_stages[8] <= l_stages[7];
        
        
        
        // xor h
        h_stages[1] <= h_stages[0] ^ l_stages[0];
        // Skip 5 cycles left of lh add
        h_stages[1] <= h_stages[0];
        h_stages[2] <= h_stages[1];
        h_stages[3] <= h_stages[2];
        h_stages[4] <= h_stages[3];
        h_stages[5] <= h_stages[4];
        
        // Skip 2 cycles of r rol64
        h_stages[6] <= h_stages[5];
        h_stages[7] <= h_stages[6];
        
        // Skip 6 cycles of add lr
        h_stages[8] <= h_stages[7];
        h_stages[9] <= h_stages[8];
        h_stages[10] <= h_stages[9];
        h_stages[11] <= h_stages[10];
        h_stages[12] <= h_stages[11];
        // Skip 2 cycles of l2 rol64
        h_stages[8] <= h_stages[7];
        h_stages[9] <= h_stages[8];
        r_stages[4] <= r_stages[3];
        r_stages[5] <= r_stages[4];
        
        next_long <= r_stages[5];
        xrsr_state_out[63:0] <= l2_stages[2] ^ h_stages[9] ^ h_stages[9] << 21;        
    end
    
    // r rol64
    always @(posedge clock) begin
        r_stages[0] <= lh << 17;
        r_stages[1] <= lh >> 47;
        r_stages[2] <= r_stages[0] | r_stages[1];
    end
    
    // l2 rol64
    
    always @(posedge clock) begin
        l2_stages[0] <= l_stages[8] << 49;
        l2_stages[1] <= l_stages[8] >> 15;
        l2_stages[2] <= l2_stages[0] | l2_stages[1];
    end
    
    // h2 rol64
    always @(posedge clock) begin
        h2_stages[0] <= h_stages[7] << 28;
        h2_stages[1] <= h_stages[7] >> 36;
        xrsr_state_out[127:64] <= h2_stages[0] | h2_stages[1];
    end
endmodule
