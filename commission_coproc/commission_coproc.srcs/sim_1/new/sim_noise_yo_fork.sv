`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2026 02:51:28 PM
// Design Name: 
// Module Name: sim_noise_yo_fork
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


module sim_noise_yo_fork;
   reg clock;
   reg [127:0] init_state;
   wire [127:0] retval;
   noise_yo_fork a (
    .noise_fork_in (init_state),
    .clock (clock),
    .ret (retval)
   );
   
   
   initial begin
      init_state = 128'hf5d83b970cf318e2d1985d5bf87f4d69;
      clock = 0;
   end
   
   always begin
      #5 clock = ~clock;
   end
endmodule
