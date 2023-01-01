`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 04:29:18 PM
// Design Name: 
// Module Name: Half_Adder_Behavioral
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

//Deniz Aydemir
module Half_Adder_Behavioral(input logic A,B,
                            output logic S,C);
    reg S; reg C;
    
    always@(A,B)
        begin
            S <= A ^ B;
            C = A & B;
        end
endmodule
