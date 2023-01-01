`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 02:42:16 PM
// Design Name: 
// Module Name: MUX
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


module MUX(
    input logic i0, i1, i2, i3,
    input logic s0,s1,s2,
    input logic clk,
    output logic q
    );
    
         always_ff@(posedge clk)
            if (s2)
                q <= i2;
            else if(s1)
                q <= i1;
            else if(s0)
                q <= i0;
            else
                q <= i3;
    
endmodule
