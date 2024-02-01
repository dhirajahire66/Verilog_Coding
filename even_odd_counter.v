`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 10:14:37
// Design Name: 
// Module Name: even_odd_counter
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


module even_odd_counter(out,in,clk,rst

    );
    input in,rst,clk;
    output reg [3:0] out;
    reg [2:0]count;
    
    always@(posedge clk)
    begin
      if(rst)
        count<=0;
      else
        count<=count+1;
     end
     
     always@(posedge clk)
       begin
         if(in)
           out<={count[2:0],1'b1};
         else
           out<={count[2:0],1'b0};
       end
endmodule
