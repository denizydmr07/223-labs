`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 04:54:28 PM
// Design Name: 
// Module Name: Full_Adder_Structural
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


module Full_Adder_Structural(input logic A,B,Cin,
                                output logic S,Co);
    logic S1,Co1,Co2;
    
    Half_Adder_Behavioral HA1(A,B,S1,Co1);
    Half_Adder_Behavioral HA2(S1,Cin,S,Co2);
    or (Co, Co1, Co2);
endmodule
