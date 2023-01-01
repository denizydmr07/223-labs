`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 06:41:48 PM
// Design Name: 
// Module Name: Datapath_tb
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


module Datapath_tb(

    );
    reg clk;
    reg clr;
    reg muxEnable;
    reg adder_high_sorter_low;
    reg sub_high_add_low;
    reg [3:0] DM_a; // 4-bit address
    reg DM_we, DM_re; // write and read enables
    //wire [3:0] DM_rd; // 4-bit read data
    //reg [3:0] DM_wd; // 4-bit write data
    reg RF_we; // write enable
    reg [2:0] RF_ra1, RF_ra2, RF_wa; // read and write addresses
    wire [3:0] RF_rd1;
    wire [3:0] RF_rd2; // read data
    //reg [3:0] RF_wd; // write data
    reg asc_high_des_low;
    reg AS_sort;
    reg AS_we;
    reg AS_re;
    reg [2:0] AS_wa;
    reg [2:0] AS_ra;
    reg [2:0] AS_constant;
    reg [3:0] RF_sd; // RF_switch_data new
    reg switch_to_register; // new
        // Display
    reg [3:0] READ_wd;
    
    Datapath datapath(clk,clr,muxEnable,adder_high_sorter_low, sub_high_add_low,DM_a,DM_we,DM_re,RF_we,RF_ra1,RF_ra2,RF_wa,RF_rd1,RF_rd2,asc_high_des_low,AS_sort,AS_we,AS_re,AS_wa,AS_ra,AS_constant,RF_sd,switch_to_register,READ_wd);
    
    always begin
        clk = 0; #5;
        clk = 1; #5;
    end
    
    initial begin
        AS_sort = 0;clr = 0; muxEnable = 0; DM_a = 0; DM_we = 0; DM_re = 0;RF_we = 0;RF_ra1 = 7;RF_ra2 = 3;RF_wa = 0; sub_high_add_low = 0; adder_high_sorter_low = 1; #1;
        muxEnable = 0; sub_high_add_low = 0; RF_ra1 = 3; RF_ra2 = 4; RF_we = 1; RF_wa = 3; #10;
        muxEnable = 0; RF_ra1 = 3; RF_ra2 = 0; RF_we = 0; RF_wa = 0; #10;
        AS_we = 1; AS_wa = 0; RF_ra2 = 3; #9;
        AS_we = 1; AS_wa = AS_wa + 1; RF_ra2 = RF_ra2 + 1; #10;
        AS_we = 1; AS_wa = AS_wa + 1; RF_ra2 = RF_ra2 + 1; #10;
        AS_we = 1; AS_wa = AS_wa + 1; RF_ra2 = RF_ra2 + 1; #10;
        asc_high_des_low = 0;AS_we = 0; AS_constant = 4; AS_sort = 1; #10;
        AS_sort = 0;
        AS_re = 1; RF_we = 1; adder_high_sorter_low = 0; RF_we = 1; RF_wa = 0; AS_ra = 0; #10;
        AS_re = 1; RF_we = 1; adder_high_sorter_low = 0; RF_we = 1; RF_wa = RF_wa + 1; AS_ra = AS_ra + 1; #10;
        AS_re = 1; RF_we = 1; adder_high_sorter_low = 0; RF_we = 1; RF_wa = RF_wa + 1; AS_ra = AS_ra + 1; #10;
        AS_re = 1; RF_we = 1; adder_high_sorter_low = 0; RF_we = 1; RF_wa = RF_wa + 1; AS_ra = AS_ra + 1; #10;
        AS_re = 0; AS_we = 0; RF_we = 0; RF_ra1 = 0; RF_ra2 = 1; #10;
        AS_re = 0; AS_we = 0; RF_we = 0; RF_ra1 = 2; RF_ra2 = 3; #10;
        AS_re = 0; AS_we = 0; RF_we = 0; RF_ra1 = 4; RF_ra2 = 5; #10;
        AS_re = 0; AS_we = 0; RF_we = 0; RF_ra1 = 6; RF_ra2 = 7; #10;
        
    end
endmodule
