`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 04:46:14 PM
// Design Name: 
// Module Name: Half_Subtractor_Behavioral_tb
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


module Half_Subtractor_Behavioral_tb;
    reg A; reg B;
    wire D; wire Bo;
    
    Half_Subtractor_Behavioral HS(.A(A), .B(B), .D(D), .Bo(Bo));
    initial begin 
        #100;
        #10; A = 0; B = 0;
        #10; A = 0; B = 1;
        #10; A = 1; B = 0;
        #10; A = 1; B = 1;
    end
endmodule
