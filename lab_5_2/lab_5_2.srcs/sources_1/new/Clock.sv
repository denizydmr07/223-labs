`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2022 04:29:34 PM
// Design Name: 
// Module Name: Clock
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


module Clock(
    input logic clock,
    output logic clock_out);
                    
    logic [22:0] data = 24'b10111110101111000010000;
    logic [22:0] count = data;
                                       
    always @(posedge(clock))
    begin
            if(count == 0) begin
                count <= data;
                clock_out = ~clock_out;
            end 
            else begin
                count <= count - 1;
                clock_out = clock_out;
            end
    end                  
endmodule
