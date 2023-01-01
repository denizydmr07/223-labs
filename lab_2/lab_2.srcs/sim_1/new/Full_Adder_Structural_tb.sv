`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 05:02:50 PM
// Design Name: 
// Module Name: Full_Adder_Structural_tb
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


module Full_Adder_Structural_tb;
    reg A; reg B; reg Cin;
    wire S; wire Co;
    
    Full_Adder_Structural FA(A,B,Cin,S,Co);
    
    initial begin 
        #100;
        #10; Cin = 0; A = 0; B = 0;
        #10; Cin = 0; A = 0; B = 1;
        #10; Cin = 0; A = 1; B = 0;
        #10; Cin = 0; A = 1; B = 1;
        #10; Cin = 1; A = 0; B = 0;
        #10; Cin = 1; A = 0; B = 1;
        #10; Cin = 1; A = 1; B = 0;
        #10; Cin = 1; A = 1; B = 1;
    end;
endmodule
