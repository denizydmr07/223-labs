`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 06:32:38 PM
// Design Name: 
// Module Name: Datapath
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


module Datapath(
    input logic clk,
    input logic clr,
    input logic load_high_alu_low,
    input logic adder_high_sorter_low,
    input logic sub_high_add_low,
    input logic [3:0] DM_a, // 4-bit address // load
    input logic DM_we, DM_re, // write and read enables // store
    //output logic [3:0] DM_rd, // 4-bit read data
    //input logic [3:0] DM_wd, // 4-bit write data
    input logic RF_we, // write enable 
    input logic [2:0] RF_ra1, RF_ra2, RF_wa, // read and write addresses // load
    output logic [3:0] RF_rd1, RF_rd2, // read data
    inout logic [3:0] RF_wd, // write data
    //AS
    input logic asc_high_des_low,
    input logic AS_sort,
    input logic AS_we,
    input logic AS_re,
    input logic [2:0] AS_wa,
    input logic [2:0] AS_ra,
    input logic [2:0] AS_constant,
    //AS
    // switch to register
    input logic [3:0] RF_sd, // RF_switch_data new
    input logic switch_to_register, // new
    // Display
    output logic [3:0] READ_wd
    );
    
    wire [3:0] DM_rd;
    //wire [3:0] RF_wd; // new
    wire [3:0] aluResult;
    wire [3:0] adderResult;
    wire [3:0] innerResult; //new
    
    RegisterFile8x4 regfile(clk, clr, RF_we, RF_ra1, RF_ra2, RF_wa, RF_rd1, RF_rd2, RF_wd, READ_wd);
    Mux2x1 mux1(load_high_alu_low, DM_rd, aluResult, innerResult); //new
    Mux2x1 mux4(switch_to_register, RF_sd, innerResult, RF_wd); //new
    DataMemory datamemory(clk, clr, DM_a, DM_we, DM_re, DM_rd, RF_rd1);
    
    wire [3:0] mux2ToAdderWire;
    Mux2x1 mux2(sub_high_add_low, ~RF_rd2, RF_rd2, mux2ToAdderWire);
    Adder_4b adder(RF_rd1, mux2ToAdderWire, sub_high_add_low, adderResult);
    
    // starting part two
    // implement parallel write, parallel read for register in order to update it (A)
    
    wire [3:0] sorterResult;
    AscendingSorter sorter(asc_high_des_low,AS_sort,AS_we,AS_re,AS_wa,RF_rd2,AS_ra,sorterResult,AS_constant);
    
    Mux2x1 mux3(adder_high_sorter_low, adderResult, sorterResult, aluResult); 
    
    
endmodule
