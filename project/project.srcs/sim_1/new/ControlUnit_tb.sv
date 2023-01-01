`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2022 11:01:41 PM
// Design Name: 
// Module Name: ControlUnit_tb
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


module ControlUnit_tb(

    );
    reg load_to_memory;
    reg clk;
    reg clr;
    reg [11:0] instruction_sd;
    reg execute_from_memory;
    reg execute_from_switch;
    wire load_high_alu_low;
    wire adder_high_sorter_low;
    wire sub_high_add_low;
    wire [3:0] DM_a; // 4-bit address // load
    wire DM_we, DM_re; // write and read enables // store
    //output logic [3:0] DM_rd, // 4-bit read data
    //input logic [3:0] DM_wd, // 4-bit write data
    wire RF_we; // write enable 
    wire [2:0] RF_ra1, RF_ra2, RF_wa; // read and write addresses // load
    //output logic [3:0] RF_rd1, RF_rd2, // read data //hmm
    //input logic [3:0] RF_wd // write data
    //AS
    wire asc_high_des_low;
    wire AS_sort;
    wire AS_we;
    wire AS_re;
    wire [2:0] AS_wa;
    wire [2:0] AS_ra;
    wire [2:0] AS_constant;
    
    ControlUnit controlunit(load_to_memory,clk,clr,instruction_sd,execute_from_memory,execute_from_switch,load_high_alu_low,adder_high_sorter_low,sub_high_add_low,DM_a,DM_we,DM_re,RF_we,RF_ra1,RF_ra2,RF_wa,asc_high_des_low,AS_sort,AS_we,AS_re,AS_wa,AS_ra,AS_constant);
    
    always begin
        clk = 0; #5;
        clk = 1; #5;
    end
    
    initial begin
        clr = 1; #10;
        clr = 0;
        execute_from_switch = 1; instruction_sd = 12'b011011011100; #10;
        execute_from_switch = 0;
        load_to_memory = 0; #10;
        
    end
    
endmodule
