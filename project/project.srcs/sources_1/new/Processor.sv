`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2022 08:11:18 PM
// Design Name: 
// Module Name: Processor
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


module Processor(
    input logic clk,
    input logic clr_in,
    input logic [11:0] instruction_sd,
    input logic execute_from_memory_in,
    input logic execute_from_switch_in,
    input logic load_to_memory_in,
    input logic switch_to_register_in, // new
    input logic [3:0] RF_sd, // new
    //input logic switch_to_register, //new
    //output logic [3:0] RF_rd1, RF_rd2,
    //input logic [4:0] RF_wd // new
    //display
    //output logic [3:0] READ_wd
    output logic [6:0] cathodes,
    output logic [3:0] anodes,
    output logic [3:0] states,
    output logic [2:0] count,
    output logic [2:0] PC
    );
    logic clk_state;
    
    StateClockDivider stateclockdivider(clk,clk_state);
    
    
    
    wire clr;
    wire execute_from_memory;
    wire execute_from_switch;
    wire load_to_memory;
    wire switch_to_register;
    
    
    Debouncer db1(clk, clr_in, clr);
    Debouncer db2(clk, execute_from_memory_in, execute_from_memory);
    Debouncer db3(clk, execute_from_switch_in, execute_from_switch);
    Debouncer db4(clk, load_to_memory_in, load_to_memory);
    Debouncer db5(clk, switch_to_register_in, switch_to_register);
    
    
    wire load_high_alu_low;
    wire adder_high_sorter_low;
    wire sub_high_add_low;
    wire [3:0] DM_a; // 4-bit address // load
    wire DM_we, DM_re; // write and read enables // store
    //output logic [3:0] DM_rd, // 4-bit read data
    //input logic [3:0] DM_wd, // 4-bit write data
    wire RF_we; // write enable 
    wire [2:0] RF_ra1, RF_ra2, RF_wa; // read and write addresses // load
    //wire [3:0] RF_rd1, RF_rd2; // read data //hmm
    wire [3:0] RF_rd1, RF_rd2;
    wire [3:0] RF_wd;
    wire [3:0] READ_wd;
    //input logic [3:0] RF_wd // write data
    //AS
    wire asc_high_des_low;
    wire AS_sort;
    wire AS_we;
    wire AS_re;
    wire [2:0] AS_wa;
    wire [2:0] AS_ra;
    wire [2:0] AS_constant;
    wire load_from_switch;
    wire display_add_or_sub;
    wire display_sorter;
    wire display;
    
    ControlUnit controlunit(load_to_memory,clk_state,clr,instruction_sd,execute_from_memory,execute_from_switch,switch_to_register,load_high_alu_low,adder_high_sorter_low,sub_high_add_low,DM_a,DM_we,DM_re,RF_we,RF_ra1,RF_ra2,RF_wa,asc_high_des_low,AS_sort,AS_we,AS_re,AS_wa,AS_ra,AS_constant,load_from_switch,display_add_or_sub,display_sorter,display,states,count); 
    Datapath datapath(clk_state,clr,load_high_alu_low,adder_high_sorter_low,sub_high_add_low,DM_a,DM_we,DM_re,RF_we,RF_ra1,RF_ra2,RF_wa,RF_rd1,RF_rd2,RF_wd,asc_high_des_low,AS_sort,AS_we,AS_re,AS_wa,AS_ra,AS_constant,RF_sd,load_from_switch,READ_wd);
    
    //ControlUnit controlunit(load_to_memory_in,clk,clr_in,instruction_sd,execute_from_memory_in,execute_from_switch_in,switch_to_register_in,load_high_alu_low,adder_high_sorter_low,sub_high_add_low,DM_a,DM_we,DM_re,RF_we,RF_ra1,RF_ra2,RF_wa,asc_high_des_low,AS_sort,AS_we,AS_re,AS_wa,AS_ra,AS_constant,load_from_switch,display_add_or_sub,display_sorter,states);
    //Datapath datapath(clk,clr_in,load_high_alu_low,adder_high_sorter_low,sub_high_add_low,DM_a,DM_we,DM_re,RF_we,RF_ra1,RF_ra2,RF_wa,RF_rd1,RF_rd2,RF_wd,asc_high_des_low,AS_sort,AS_we,AS_re,AS_wa,AS_ra,AS_constant,RF_sd,load_from_switch,READ_wd);
    /*
    always@(display_add_or_sub, display_sorter, AS_constant, READ_wd, RF_rd1,RF_rd2) begin
        if (display_add_or_sub) begin
            input3 <= RF_rd1;
            input2 <= RF_rd2;
            input1 <= 4'bxxxx;
            input0 <= READ_wd;
        end
        
        else if (display_sorter) begin
            input3 <= AS_constant;
            input2 <= 4'bxxxx;
            input1 <= 4'bxxxx;
            input0 <= READ_wd;
        end
        // else if display
        else begin
            input3 <= 4'bxxxx;
            input2 <= 4'bxxxx;
            input1 <= 4'bxxxx;
            input0 <= 4'bxxxx;            
        end
    end
    */
    
    /*
    assign input3 = display_add_or_sub ? RF_rd1 : display_sorter ? AS_constant : 4'bxxxx;
    assign input2 = display_add_or_sub ? RF_rd2 : display_sorter ? 4'bxxxx : 4'bxxxx;
    assign input1 = display_add_or_sub ? 4'bxxxx : display_sorter ? 4'bxxxx : 4'bxxxx;
    assign input0 = display_add_or_sub ? READ_wd : display_sorter ? READ_wd : 4'bxxxx;
    */
    
    SevenSegmentDisplay sevensegmentdisplay(clk,cathodes, anodes,display_add_or_sub,display_sorter,RF_rd1,RF_rd2,AS_constant,RF_wd,display);
endmodule
