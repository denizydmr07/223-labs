`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2022 08:44:55 PM
// Design Name: 
// Module Name: Processor_tb
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


module Processor_tb(

    );
    reg clk;
    reg clr;
    reg [11:0] instruction_sd;
    reg execute_from_memory;
    reg execute_from_switch;
    reg switch_to_register;
    reg [3:0] RF_sd;
    reg load_to_memory;
    wire [6:0] cathodes;
    wire [3:0] anodes;
    wire [3:0] states;
    wire [2:0] count;
    wire [2:0] PC;
    
    Processor processor(clk,clr,instruction_sd,execute_from_memory,execute_from_switch,load_to_memory,switch_to_register,RF_sd, cathodes, anodes,states,count,PC);
    
    always begin
        clk = 0; #5;
        clk = 1; #5;
    end
    
    initial begin 
        execute_from_memory = 0;clr = 1; #9;
        clr = 0; #10;
        
        switch_to_register = 1; RF_sd = 0; instruction_sd = 12'b000000101101; #10;
        switch_to_register = 0; #30;
        switch_to_register = 1; RF_sd = 1; instruction_sd = 12'b001000101101; #10;
        switch_to_register = 0; #30;     
        switch_to_register = 1; RF_sd = 2; instruction_sd = 12'b010000101101; #10;
        switch_to_register = 0; #30; 
        switch_to_register = 1; RF_sd = 3; instruction_sd = 12'b011000101101; #10;
        switch_to_register = 0; #30;
        switch_to_register = 1; RF_sd = 4; instruction_sd = 12'b100000101101; #10;
        switch_to_register = 0; #30;
        switch_to_register = 1; RF_sd = 5; instruction_sd = 12'b101000101101; #10;
        switch_to_register = 0; #30;     
        switch_to_register = 1; RF_sd = 6; instruction_sd = 12'b110000101101; #10;
        switch_to_register = 0; #30; 
        switch_to_register = 1; RF_sd = 7; instruction_sd = 12'b111000101101; #10;
        switch_to_register = 0; #30; 
        load_to_memory = 1; instruction_sd = 12'b001001100001;#10;
        load_to_memory = 1; instruction_sd = 12'b000000000001;#10;
        load_to_memory = 1; instruction_sd = 12'b010111011010;#10;
        load_to_memory = 1; instruction_sd = 12'b011110011010;#10;
        load_to_memory = 1; instruction_sd = 12'b100100000100;#10;
        load_to_memory = 1; instruction_sd = 12'b101000101101;#10;
        load_to_memory = 0;
        execute_from_memory = 1; #10;
        execute_from_memory = 0; #100;
        execute_from_memory = 1; #10;
        execute_from_memory = 0; #100;
        execute_from_memory = 1; #10;
        execute_from_memory = 0; #100;
        execute_from_memory = 1; #10;
        execute_from_memory = 0; #100;
        execute_from_memory = 1; #10;
        execute_from_memory = 0; #120;
        execute_from_switch = 1; instruction_sd = 12'b101000101101; #10;
        execute_from_switch = 0; #120;
        switch_to_register = 1; RF_sd = 7; instruction_sd = 12'b000000101101; #10;
        switch_to_register = 0;
    end
endmodule
