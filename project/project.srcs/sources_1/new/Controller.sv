`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2022 05:43:54 PM
// Design Name: 
// Module Name: Controller
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


module Controller(
    input logic clk,
    input logic clr,
    input logic [11:0] instruction_sd,
    input logic isExternal
    );
    
    reg [11:0] instruction_rd;
    wire [11:0] instruction_md;
    int PC = 0; // temp
    
    InstructionMemory instractionmemory(clk,clr,!isExternal, instruction_sd, PC, instruction_md);
    
    always_ff@(posedge clk) begin
        if(clr) begin
            instruction_rd <= 0;
        end
        else if(isExternal) begin
            instruction_rd <= instruction_sd;
        end
        else if(!isExternal) begin
            instruction_rd <= instruction_md;
        end
    end
    
endmodule
