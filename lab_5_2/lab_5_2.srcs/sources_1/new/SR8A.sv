`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2022 07:51:37 PM
// Design Name: 
// Module Name: SR8A
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


module SR8A(
    input logic mclk,
    input logic [7:0] LA, LB,
    input logic shift, load, reset,
    output logic [7:0] QR
    );
    logic S, clk;
    
    Clock cl(mclk, clk);
    
    SR8bx2wA firstpart(clk, LA,LB,shift,load,reset,S);
    SR8b secondpart(clk,S,QR,shift,load,reset,QR);
    
endmodule
