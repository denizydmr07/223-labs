`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: gay deniz
// 
// Create Date: 12/03/2022 03:33:53 PM
// Design Name: 
// Module Name: TestBench
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


module TestBench(

    );
    reg clk; reg [7:0] LA; reg [7:0] LB; 
    reg shift; reg load; reg reset;
    wire [7:0] QR;
    logic S = 1;
    SR8bx2wA firstpart(clk, LA,LB,shift,load,reset,S);
    SR8b secondpart(clk,S,QR,shift,load,reset,QR);
    always 
    begin
        clk = 0; #5;
        clk = 1; #5;
    end
    
    
    
    initial begin
        shift = 0; load = 0;reset = 1; #6;
        reset = 0;
        LA = 8'b01001010; LB = 8'b00110011;
        shift = 0; load = 1; #12;
        load = 0; #6;
        shift = 1; #100;
        shift = 0; reset = 1; #11;
        reset = 0; load = 1; #11;
        load = 0;shift = 1; #100;    
    end
endmodule
