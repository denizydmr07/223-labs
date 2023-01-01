`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 02:50:16 PM
// Design Name: 
// Module Name: Structural_Decoder4
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


module Structural_Decoder4(
    input logic a,b,e,
    output logic q0,q1,q2,q3
    );
    
    logic n0, n1;
    
    Behavioral_Decoder2 dec1(a,e,n0,n1);
    Behavioral_Decoder2 dec2(b,n0,q0,q1);
    Behavioral_Decoder2 dec3(b,n1,q2,q3);
    
endmodule
