`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2022 19:59:02
// Design Name: 
// Module Name: dff
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


module dff(rst,din,clk,q
    );
    input clk,din,rst;
    output reg q;
    always@(posedge clk)
    begin
     if(rst)
       q<=1'b0;
       else
       q<=din;
    end
endmodule
