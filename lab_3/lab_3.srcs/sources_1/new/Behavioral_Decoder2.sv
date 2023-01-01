`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 02:37:38 PM
// Design Name: 
// Module Name: Behavioral_Decoder2
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


module Behavioral_Decoder2(
    input logic a,e,
    output logic q0,q1
    );
    
    reg q0; reg q1;
    
    always@(a,e)
        begin
            q0 <= e & ~a;
            q1 <= e & a;
        end
endmodule
