`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2022 04:43:28 PM
// Design Name: 
// Module Name: Half_Subtractor_Behavioral
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


module Half_Subtractor_Behavioral(input logic A,B,
                                    output logic D,Bo);

    reg D; reg Bo;
    
    always@(A,B) 
        begin
            D <= A ^ B;
            Bo <= ~A & B;
        end
endmodule
