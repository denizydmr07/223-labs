`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 05:55:24 PM
// Design Name: 
// Module Name: RegisterFile8x4_tb
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


module RegisterFile8x4_tb();
    logic clk;
    logic clr;
    logic RF_we; // write enable
    logic [2:0] RF_ra1, RF_ra2, RF_wa; // read and write addresses
    logic [3:0] RF_rd1, RF_rd2; // read data
    reg [3:0] RF_wd; // write data
    wire READ_wd;
    
    RegisterFile8x4 RF8x4(clk,clr,RF_we,RF_ra1,RF_ra2,RF_wa,RF_rd1,RF_rd2,RF_wd,READ_wd);
    
    always begin
        clk = 0; #5;
        clk = 1; #5;
    end
    
    initial begin
    clr = 0; RF_we = 1; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 7; RF_wd = 4'b1111; #10;
    clr = 0; RF_we = 0; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 7; RF_wd = 4'b1111; #10;
    clr = 0; RF_we = 1; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 3; RF_wd = 4'b0000; #10;
    clr = 0; RF_we = 0; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 3; RF_wd = 4'b0000; #10;
    clr = 0; RF_we = 0; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 3; RF_wd = 4'b0000; #10;
    clr = 1; #10;
    clr = 0; RF_we = 1; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 7; RF_wd = 4'b1111; #10;
    clr = 0; RF_we = 0; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 7; RF_wd = 4'b1111; #10;
    clr = 0; RF_we = 1; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 3; RF_wd = 4'b0000; #10;
    clr = 0; RF_we = 0; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 3; RF_wd = 4'b0000; #10;
    clr = 0; RF_we = 0; RF_ra1 = 3; RF_ra2 = 7; RF_wa = 3; RF_wd = 4'b0000; #10;
    RF_wd = 3; RF_wa = 7; RF_we = 1; #10;
    RF_we = 0;
    end
endmodule
