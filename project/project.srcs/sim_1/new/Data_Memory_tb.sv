`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 02:49:55 PM
// Design Name: 
// Module Name: Data_Memory_tb
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


module Data_Memory_tb(

    );
    logic clk, clr;
    logic [3:0] DM_a, DM_rd, DM_wd;
    logic DM_we, DM_re;
    DataMemory datamemory(clk,clr,DM_a,DM_we,DM_re,DM_rd,DM_wd);
    
    always begin
        clk = 0; #5;
        clk = 1; #5;
    end
    
    initial begin
        clr = 0; DM_a = 4'b0000; DM_we = 1; DM_re = 0; DM_wd = 4'b1111; #9;
        clr = 0; DM_a = 4'b0000; DM_we = 0; DM_re = 1; DM_wd = 4'b1111; #9;
        clr = 0; DM_a = 4'b0001; DM_we = 1; DM_re = 1; DM_wd = 4'b0011; #9;
    end
endmodule
