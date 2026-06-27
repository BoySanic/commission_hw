`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2026 09:39:31 AM
// Design Name: 
// Module Name: octave_yo_mod1
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


module octave_yo_mod1(
        
        input [127:0] noise_yo_fork,
        input clock,
        input [1:0] octave,
        output reg [31:0] score_yo_mama 
    );
        reg  [127:0] hash_octave [2:0];
        reg  [127:0] fork_hash;
        reg  [63:0] l_stages[32:0], h_stages[32:0];
        reg  [63:0] r_stages[32:0];
        reg  [63:0] lh;
    
    add_u64 add_lr (
        .A (l_stages[8]),
        .B (r_stages[2]),
        .S (r_stages[3]),
        .CLK (clock),
        .CE (1)
    );
    add_u64 add_lh (
        .A (l_stages[0]),
        .B (h_stages[0]),
        .S (lh),
        .CLK (clock),
        .CE (1)
    );
    
    
    initial begin
        hash_octave[0] = 128'hbda60bab046b9f3cf3a0af8348cb4bcc;
        hash_octave[1] = 128'h5277c961e46403156c58c32af9319c16;
        hash_octave[2] = 128'h58db2c5e5d46875790462109e137d6e1;
        
    end
    
    initial begin
        integer index;
        lh = 64'd0;
        for (index = 0; index < 8; index = index + 1) begin
            h_stages[index] = 64'd0;
            l_stages[index] = 64'd0;
            r_stages[index] = 64'd0;
        end
        score_yo_mama = 64'd0;
    end
    
    always @(posedge clock) begin
    
        l_stages[0] <= noise_yo_fork[63:0] ^ hash_octave[octave][63:0];
        h_stages[0] <= noise_yo_fork[127:64] ^ hash_octave[octave][127:64];
        
        // Skip 6 clocks for add
        l_stages[1] <= l_stages[0];
        l_stages[2] <= l_stages[1];
        l_stages[3] <= l_stages[2];
        l_stages[4] <= l_stages[3];
        l_stages[5] <= l_stages[4];
        l_stages[6] <= l_stages[5];
        // Skip 2 clocks for rol64
        l_stages[7] <= l_stages[6];
        l_stages[8] <= l_stages[7];
        score_yo_mama <= (r_stages[3] >> 32) & 64'hFFFFFF;
    end
    
    // r rol64
    always @(posedge clock) begin
        r_stages[0] <= lh << 17;
        r_stages[1] <= lh >> 47;
        r_stages[2] <= r_stages[0] | r_stages[1];

    end

endmodule
