`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 06:14:32 PM
// Design Name: 
// Module Name: Lab_Calculator_Structural
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


module Lab_Calculator_Structural(input logic C,D,A,B,
                                output logic Y,Z);
    logic adderY, adderZ, subtY, subtZ;
    
    Half_Adder_Behavioral HA(A,B,adderY,adderZ);
    Half_Subtractor_Behavioral HS(A,B,subtY,subtZ);
    
    assign Y = C ? (D ? subtY : adderY) :
                    (D ? ~(A & B) : A ^ B);
    assign Z = C ? (D ? subtZ : adderZ) : 1'bx;
    
endmodule
