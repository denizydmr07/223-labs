`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2022 05:19:56 PM
// Design Name: 
// Module Name: StateClockDivider
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


module StateClockDivider(
    input logic clk_in,
    output logic clk_out
    );
    
    int counter = 0;
    
    always_ff@(posedge clk_in) begin
        if (counter == 49999999) begin
            clk_out <= ~clk_out;
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
            clk_out <= clk_out;
        end
    end
endmodule
