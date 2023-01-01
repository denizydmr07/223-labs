`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 06:30:17 PM
// Design Name: 
// Module Name: Lab_Calculator_Structural_tb
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


module Lab_Calculator_Structural_tb;
    reg C; reg D; reg A; reg B;
    wire Y; wire Z;
    
    Lab_Calculator_Structural LC(C,D,A,B,Y,Z);
    
    initial begin
        #10;
        #10; C = 0; D = 0; A = 0; B = 0;
        #10; C = 0; D = 0; A = 0; B = 1;
        #10; C = 0; D = 0; A = 1; B = 0;
        #10; C = 0; D = 0; A = 1; B = 1;
        #10; C = 0; D = 1; A = 0; B = 0;
        #10; C = 0; D = 1; A = 0; B = 1;
        #10; C = 0; D = 1; A = 1; B = 0;
        #10; C = 0; D = 1; A = 1; B = 1;
        #10; C = 1; D = 0; A = 0; B = 0;
        #10; C = 1; D = 0; A = 0; B = 1;
        #10; C = 1; D = 0; A = 1; B = 0;
        #10; C = 1; D = 0; A = 1; B = 1;
        #10; C = 1; D = 1; A = 0; B = 0;
        #10; C = 1; D = 1; A = 0; B = 1;
        #10; C = 1; D = 1; A = 1; B = 0;
        #10; C = 1; D = 1; A = 1; B = 1;
    end
endmodule
