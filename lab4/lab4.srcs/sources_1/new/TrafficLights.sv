`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2022 07:11:45 PM
// Design Name: 
// Module Name: TrafficLights
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


module TrafficLights(
    input logic reset, clk, SA, SB,
    output logic [2:0] LA, LB
    );
    logic mclk;
    Clock changedClok(clk, mclk);
    FSM fsm(reset, mclk, SA, SB, LA, LB);
endmodule
