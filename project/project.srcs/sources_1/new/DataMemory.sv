`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2022 10:09:39 AM
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
    input logic clk,
    input logic clr,
    input logic [3:0] DM_a, // 4-bit address
    input logic DM_we, DM_re, // write and read enables
    output logic signed [3:0] DM_rd, // 4-bit read data
    input logic [3:0] DM_wd // 4-bit write data
    );
    
    
    logic [3:0] DM[0:15];
    
    initial begin
        for (int i = 0; i < 16; i = i + 1) begin
            DM[i] = 0;
        end
    end
    
    //always_ff@(posedge clk) begin
    always@(clr, DM_a, DM_we,DM_re,DM_wd) begin
        if (clr == 1'b1) begin
            DM[0] <= 4'b0000;
            DM[1] <= 4'b0000;
            DM[2] <= 4'b0000;
            DM[3] <= 4'b0000;
            DM[4] <= 4'b0000;
            DM[5] <= 4'b0000;
            DM[6] <= 4'b0000;
            DM[7] <= 4'b0000;
            DM[8] <= 4'b0000;
            DM[9] <= 4'b0000;
            DM[10] <= 4'b0000;
            DM[11] <= 4'b0000;
            DM[12] <= 4'b0000;
            DM[13] <= 4'b0000;
            DM[14] <= 4'b0000;
            DM[15] <= 4'b0000;
        end
        
        
        else if (DM_we == 1'b1) begin
            DM[DM_a] <= DM_wd;
        end
        
        else if (DM_re == 1'b1) begin
            DM_rd <= DM[DM_a];
        end
        
    end
endmodule
