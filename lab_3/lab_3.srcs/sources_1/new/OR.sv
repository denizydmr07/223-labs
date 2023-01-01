`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 04:00:50 PM
// Design Name: 
// Module Name: OR
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


module OR(
    input logic a,b,
    output logic q
    );
    
    reg q;
    
    always@(a,b) 
        begin 
            q <= a | b;
        end
endmodule
