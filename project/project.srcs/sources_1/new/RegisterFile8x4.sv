`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 05:37:19 PM
// Design Name: 
// Module Name: RegisterFile8x4
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


module RegisterFile8x4(
    // all data is 4-bit two's complement
    input logic clk,
    input logic clr,
    input logic RF_we,
    input logic [2:0] RF_ra1, RF_ra2, RF_wa, // read and write addresses
    output logic [3:0] RF_rd1, RF_rd2, // read data
    inout logic [3:0] RF_wd, // write data
    output logic [3:0] READ_wd
    );
    
    logic [3:0] RF[0:7];
    
    initial begin
        for (int i = 0; i < 8; i = i + 1) begin
            RF[i] = 0;
        end
    end
    
    always_ff@(posedge clk) begin
    //always_comb begin
        if (clr == 1) begin
            RF[0] <= 0;
            RF[1] <= 0;
            RF[2] <= 0;
            RF[3] <= 0;
            RF[4] <= 0;
            RF[5] <= 0;
            RF[6] <= 0;
            RF[7] <= 0;
        end
        else if (RF_we == 1'b1) begin
            RF[RF_wa] <= RF_wd;
        end
        else begin
            RF <= RF;
        end
    end 
    
    assign READ_wd = RF_wd;
    assign RF_rd1 = RF[RF_ra1];
    assign RF_rd2 = RF[RF_ra2];
    

    
    
endmodule
