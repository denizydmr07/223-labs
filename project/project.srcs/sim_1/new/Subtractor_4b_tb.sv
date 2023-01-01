`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 11:39:36 AM
// Design Name: 
// Module Name: Subtractor_4b_tb
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


module Subtractor_4b_tb();
    logic [3:0] a,B,sum;
    logic cout;
    
    Subtractor_4b subtractor(a,B,sum,cout);
    
    initial begin
        a = 4'b1000; B = 4'b0001; #10;
        a = 4'b1000; B = 4'b0011; #10;
    end
endmodule
