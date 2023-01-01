`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 05:11:34 PM
// Design Name: 
// Module Name: Two_Bit_Adder_Structural
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


module Two_Bit_Adder_Structural(input logic A1,A0,B1,B0,Cin,
                                output logic S1,S0,Co);
    logic Co1;
    
    Full_Adder_Structural FA1(A0,B0,Cin,S0,Co1);
    Full_Adder_Structural FA2(A1,B1,Co1,S1,Co);
endmodule
