`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 05:37:19 PM
// Design Name: 
// Module Name: F
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


module F(
    input logic a,b,c,d,
    output logic q
    );
    
    Structural_MUX8 mux(1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0, a, b, c, q);
endmodule
