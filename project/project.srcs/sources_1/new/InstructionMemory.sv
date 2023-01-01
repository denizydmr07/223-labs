`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2022 05:33:39 PM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
    input logic clk,
    input logic clr,
    input logic instruction_we,
    input logic [11:0] instruction_wd,
    input logic [2:0] PC,
    output logic [11:0] instruction_rd,
    output logic [2:0] count
    );
    
    logic [11:0] instructions[0:7];
    //always@(instruction_wd,clr,instruction_we) begin
    always_ff@(posedge clk) begin
    //always_comb begin
        if (clr) begin
            instructions[0] <= 12'b000000000000;
            instructions[1] <= 12'b000000000000;
            instructions[2] <= 12'b000000000000;
            instructions[3] <= 12'b000000000000;
            instructions[4] <= 12'b000000000000;
            instructions[5] <= 12'b000000000000;
            instructions[6] <= 12'b000000000000;
            instructions[7] <= 12'b000000000000;
            count <= 0;
        end
        
        else if (instruction_we) begin
            instructions[count] = instruction_wd;
            count = count + 1;
        end     
    end
    
    assign instruction_rd = instructions[PC];
endmodule
