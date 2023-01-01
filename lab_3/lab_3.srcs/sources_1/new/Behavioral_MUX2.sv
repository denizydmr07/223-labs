`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 02:25:20 PM
// Design Name: 
// Module Name: Behavioral_MUX2
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


module Behavioral_MUX2(
    input logic a,b,s,
    output logic q
    );
    reg q;
    
    always@(a,b,s)
        begin 
            q <= s ? b : a;
        end
endmodule
