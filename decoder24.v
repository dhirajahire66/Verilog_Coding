`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2022 09:22:39
// Design Name: 
// Module Name: decoder24
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


module decoder24(i,z

    );
    input [1:0]i;
    output reg [3:0]z;
    
    always @(i) 
    begin
    z={i[1]&i[0],i[1]&~i[0],~i[1]&i[0],~i[1]&~i[0]};
    end

endmodule
