`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2022 21:57:55
// Design Name: 
// Module Name: adder4bit
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


module adder4bit(sum,cout,cin,a,b

    );
    input [3:0]a,b; 
    input cin;
    output [3:0]sum;
    output cout;
    wire c1,c2,c3;
    
    FA FA1(a[0],b[0],cin,sum[0],c1);
    FA FA2(a[1],b[1],c1,sum[1],c2);
    FA FA3(a[2],b[2],c2,sum[2],c3);
    FA FA4(a[1],b[3],c3,sum[3],cout);
    
    
    
endmodule


module FA(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire n1,n2,n3;

HA HA1(a,b,n2,n1);
HA HA2(n2,cin,s,n3);
or or1(cout,n1,n3);
endmodule

module HA(a,b,s,cout);
input a,b; 
output reg s;
output reg cout;
 always@(a,b)begin
    s=a^b; 
    cout=a&b; 
    end
 endmodule

