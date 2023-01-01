`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 11:35:41 AM
// Design Name: 
// Module Name: Subtractor_4b
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


module Subtractor_4b(
        input logic [3:0] a, B,
        output logic [3:0] sum,
        output logic cout
    );
    logic [3:0] b;
    always@(a, B)
    begin
        b <= ~B + 1; 
    end
    Adder_4b adder(a,b,0,sum,cout);
    /*
    always@(a, b)
    begin
        sum <= a - b;
        cout <= (a[3]&b[3]) |
                (a[3]^b[3]) & a[2]&b[2] | 
                (a[3]^b[3]) & (a[2]^b[2]) & a[1]&b[1] | 
                (a[3]^b[3]) & (a[2]^b[2]) & (a[1]^b[1]) & a[0]&b[0] | 
                (a[3]^b[3]) & (a[2]^b[2]) & (a[1]^b[1]) & (a[0]^b[0]) & 1;
    end
    */
endmodule
