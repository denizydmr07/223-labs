`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 12:13:27 AM
// Design Name: 
// Module Name: Adder_4b_tb
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


module Adder_4b_tb();
    logic signed [3:0] a,b, sum;
    logic cin;
    
    Adder_4b adder(a,b,cin,sum);
    
    initial begin
        a = 4'b0111; b = 4'b0111; cin = 0;#10;
        a = 4'b1101; b = 4'b1101; cin = 0;#10;
        a = 4'b0001; b = 4'b1101; cin = 1;#10;
        a = 4'b0010; b = 4'b1101; cin = 1;#10;
        a = 4'b0001; b = 4'b0000; cin = 1;#10;
        a = 4'b0000; b = 4'b0000; cin = 1;#10;
    end
endmodule
