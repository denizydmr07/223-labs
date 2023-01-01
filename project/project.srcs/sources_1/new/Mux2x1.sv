`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 07:13:17 PM
// Design Name: 
// Module Name: Mux2x1
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


module Mux2x1(
    input logic en,
    input logic [3:0] i0, i1,
    output logic [3:0] q
    );
    always@(en, i0, i1)
    begin
        if (en)
            q <= i0;
        else
            q <= i1;
    end
endmodule
