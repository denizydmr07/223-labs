`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 03:38:57 PM
// Design Name: 
// Module Name: Structural_MUX8
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


module Structural_MUX8(
    input logic  d0,d1,d2,d3,d4,d5,d6,d7,
    input logic s2, s1, s0, 
    output logic q
    );
    
    logic n0, n1, n2 ,n3;
    
    Structural_MUX4 mux1(d0,d1,d2,d3, s1, s0, n0);
    Structural_MUX4 mux2(d4,d5,d6,d7, s1, s0, n1);
    
    and(n2, n0, ~s2);
    and(n3, n1, s2);
    or(q, n2, n3);
endmodule
