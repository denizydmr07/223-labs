`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 05:16:39 PM
// Design Name: 
// Module Name: Two_Bit_Adder_Structural_tb
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


module Two_Bit_Adder_Structural_tb;
    reg A1; reg A0; reg B1; reg B0; reg Cin;
    wire S1; wire S0; wire Co;
    
    Two_Bit_Adder_Structural TBA(A1,A0,B1,B0,Cin,S1,S0,Co);
    
    initial begin 
        #100;
        #10; A1 = 0; A0 = 0; B1 = 0; B0 = 0; Cin = 0;
        #10; A1 = 0; A0 = 0; B1 = 0; B0 = 0; Cin = 1;
        #10; A1 = 0; A0 = 0; B1 = 0; B0 = 1; Cin = 0;
        #10; A1 = 0; A0 = 0; B1 = 0; B0 = 1; Cin = 1;
        #10; A1 = 0; A0 = 0; B1 = 1; B0 = 0; Cin = 0;
        #10; A1 = 0; A0 = 0; B1 = 1; B0 = 0; Cin = 1;
        #10; A1 = 0; A0 = 0; B1 = 1; B0 = 1; Cin = 0;
        #10; A1 = 0; A0 = 0; B1 = 1; B0 = 1; Cin = 1;
        #10; A1 = 0; A0 = 1; B1 = 0; B0 = 0; Cin = 0;
        #10; A1 = 0; A0 = 1; B1 = 0; B0 = 0; Cin = 1;
        #10; A1 = 0; A0 = 1; B1 = 0; B0 = 1; Cin = 0;
        #10; A1 = 0; A0 = 1; B1 = 0; B0 = 1; Cin = 1;
        #10; A1 = 0; A0 = 1; B1 = 1; B0 = 0; Cin = 0;
        #10; A1 = 0; A0 = 1; B1 = 1; B0 = 0; Cin = 1;
        #10; A1 = 0; A0 = 1; B1 = 1; B0 = 1; Cin = 0;
        #10; A1 = 0; A0 = 1; B1 = 1; B0 = 1; Cin = 1;
        #10; A1 = 1; A0 = 0; B1 = 0; B0 = 0; Cin = 0;
        #10; A1 = 1; A0 = 0; B1 = 0; B0 = 0; Cin = 1;
        #10; A1 = 1; A0 = 0; B1 = 0; B0 = 1; Cin = 0;
        #10; A1 = 1; A0 = 0; B1 = 0; B0 = 1; Cin = 1;
        #10; A1 = 1; A0 = 0; B1 = 1; B0 = 0; Cin = 0;
        #10; A1 = 1; A0 = 0; B1 = 1; B0 = 0; Cin = 1;
        #10; A1 = 1; A0 = 0; B1 = 1; B0 = 1; Cin = 0;
        #10; A1 = 1; A0 = 0; B1 = 1; B0 = 1; Cin = 1;
        #10; A1 = 1; A0 = 1; B1 = 0; B0 = 0; Cin = 0;
        #10; A1 = 1; A0 = 1; B1 = 0; B0 = 0; Cin = 1;
        #10; A1 = 1; A0 = 1; B1 = 0; B0 = 1; Cin = 0;
        #10; A1 = 1; A0 = 1; B1 = 0; B0 = 1; Cin = 1;
        #10; A1 = 1; A0 = 1; B1 = 1; B0 = 0; Cin = 0;
        #10; A1 = 1; A0 = 1; B1 = 1; B0 = 0; Cin = 1;
        #10; A1 = 1; A0 = 1; B1 = 1; B0 = 1; Cin = 0;
        #10; A1 = 1; A0 = 1; B1 = 1; B0 = 1; Cin = 1;
    end
    
endmodule
