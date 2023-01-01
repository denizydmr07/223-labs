`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 08:32:42 PM
// Design Name: 
// Module Name: SR8b_tb
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


module SR8b_tb(
    );
    reg clk; reg Sin;
    reg [7:0] L;
    reg shift;reg load;reg reset;
    wire [7:0] q;
    wire out;
    
    SR8b sr8b(clk,Sin,L,shift,load,reset,q,out);
    
    always 
        begin
            clk = 0; #5;
            clk = 1; #5;
        end
    initial begin
        shift = 0; reset = 1; Sin = 0; #6;
        L = 8'b10101010; 
        load = 1; #6;
        load = 0;
        reset = 1; #6; 
        load = 1; #6;
        reset = 0;
        shift = 1; #100;
        reset = 1; #10; 
        load = 1; #10;
        reset = 0; load = 0;
        shift = 1; #100;
    end
    
endmodule
