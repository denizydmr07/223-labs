`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2022 03:42:53 PM
// Design Name: 
// Module Name: AscendigSorter_tb
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


module AscendigSorter_tb(

    );
    logic asc_high_des_low;
    logic AS_sort,AS_we,AS_re;
    logic [2:0] AS_wa;
    logic [3:0] AS_wd;
    logic [2:0] AS_ra;
    logic [3:0] AS_rd;
    logic [2:0] AS_constant;
    
    AscendingSorter sorter(asc_high_des_low,AS_sort,AS_we,AS_re,AS_wa,AS_wd,AS_ra,AS_rd,AS_constant);
    
    initial begin
        asc_high_des_low = 1;
        AS_sort = 0;AS_we = 1; AS_wa = 0; AS_wd = 5; AS_constant = 4; #5;
        AS_we = 1; AS_wa = 1; AS_wd = 3; #5;
        AS_we = 1; AS_wa = 2; AS_wd = 1; #5;
        AS_we = 1; AS_wa = 3; AS_wd = 7; #5;
        AS_we = 0; AS_sort = 1; #5;
        AS_sort = 0;AS_re = 1; AS_ra = 0; #5;
        AS_re = 1; AS_ra = 1; #5;
        AS_re = 1; AS_ra = 2; #5;
        AS_re = 1; AS_ra = 3; #5;
    end
endmodule
