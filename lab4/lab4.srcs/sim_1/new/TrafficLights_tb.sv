`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2022 08:51:21 PM
// Design Name: 
// Module Name: TrafficLights_tb
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


module TrafficLights_tb(

    );
    reg reset; reg clk; reg SA; reg SB;
    wire [2:0] LA; wire [2:0] LB;
    
    
    FSM fsm(reset, clk, SA, SB, LA, LB);
    
    always begin
        clk = 1; #10; clk = 0; #10;
    end
    
    initial begin
        reset = 1; #20;
        reset = 0;
        SA = 0; SB = 0; #21;
        SA = 0; SB = 1; #21;
        SA = 0; SB = 1; #21;
        SA = 0; SB = 1; #21;
        SA = 0; SB = 1; #21;
        SA = 0; SB = 1; #21;
        SA = 0; SB = 0; #20; 
        SA = 0; SB = 0; #20; 
        SA = 0; SB = 0; #20;
        SA = 0; SB = 0; #20;
        SA = 1; SB = 0; #20;
        SA = 1; SB = 0; #20;
        SA = 1; SB = 1; #20;
        SA = 1; SB = 1; #20;
        SA = 1; SB = 1; #20;
        SA = 1; SB = 1; #20;        
        SA = 1; SB = 1; #20;
        SA = 1; SB = 1; #20;
        SA = 1; SB = 1; #20;
        SA = 1; SB = 1; #20;
        SA = 1; SB = 1; #20;
        SA = 1; SB = 1; reset = 1;#20;
        SA = 1; SB = 1; reset = 1;#20;
        SA = 1; SB = 1; reset = 0;#20;  
    end
endmodule
