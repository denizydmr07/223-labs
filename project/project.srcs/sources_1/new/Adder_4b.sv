`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 12:03:30 AM
// Design Name: 
// Module Name: Adder_4b
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


module Adder_4b(
    input logic signed [3:0] a, b,
    input logic cin,
    output logic signed [3:0] sum
    //output logic cout
    );
    
    always@(a, b, cin)
    begin
        sum <= a + b + cin;
        /*
        cout <= (a[3]&b[3]) |
                (a[3]^b[3]) & a[2]&b[2] | 
                (a[3]^b[3]) & (a[2]^b[2]) & a[1]&b[1] | 
                (a[3]^b[3]) & (a[2]^b[2]) & (a[1]^b[1]) & a[0]&b[0] | 
                (a[3]^b[3]) & (a[2]^b[2]) & (a[1]^b[1]) & (a[0]^b[0]) & cin;
        */
    end
endmodule
