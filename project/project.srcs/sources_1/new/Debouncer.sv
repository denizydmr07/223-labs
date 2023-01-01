`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2022 05:03:13 PM
// Design Name: 
// Module Name: Debouncer
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

module Debouncer #(parameter DEBOUNCE_COUNT = 1000) (
  input wire clk,
  input wire button,
  output reg debounced_button
);
  reg [DEBOUNCE_COUNT-1:0] counter;

  always @(posedge clk) begin
    if (button) begin
      if (counter == DEBOUNCE_COUNT) begin
        debounced_button <= 1;
      end else begin
        counter <= counter + 1;
      end
    end else begin
      debounced_button <= 0;
      counter <= 0;
    end
  end
endmodule

