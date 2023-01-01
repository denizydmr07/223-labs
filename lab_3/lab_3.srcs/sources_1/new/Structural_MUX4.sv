`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 03:03:56 PM
// Design Name: 
// Module Name: Structural_MUX4
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


module Structural_MUX4(
    input logic d0,d1,d2,d3,s1,s0,
    output logic q
    );
    
    logic n0, n1;
    
    Behavioral_MUX2 mux1(d0,d1,s0,n0);
    Behavioral_MUX2 mux2(d2,d3,s0,n1);
    Behavioral_MUX2 mux3(n0,n1,s1,q);
endmodule
