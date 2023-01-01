`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2022 11:17:55 PM
// Design Name: 
// Module Name: SR8b
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


module SR8b(
    input logic clk,
    input logic Sin,
    input logic [7:0] L,
    input logic shift, load, reset,
    output logic [7:0] q,
    output logic out
    );
    logic [7:0] data;
    logic [3:0] c;
    
    
    always_ff@(posedge clk)
    begin
        if (load)
            begin
                data <= L;
            end
        else if (shift & (c != 4'b1000))
            begin
                c <= c + 4'b0001;
                data[7] <= Sin;
                data[6] <= data[7];
                data[5] <= data[6];
                data[4] <= data[5];
                data[3] <= data[4];
                data[2] <= data[3];
                data[1] <= data[2];
                data[0] <= data[1];                      
            end
        else if (reset)
            begin
                data <= 8'b00000000;
                c <= 4'b0000;
            end
    end

    
    
    DFF dff7(data[7],clk,reset,q[7]);
    DFF dff6(data[6],clk,reset,q[6]);
    DFF dff5(data[5],clk,reset,q[5]);
    DFF dff4(data[4],clk,reset,q[4]);
    DFF dff3(data[3],clk,reset,q[3]);
    DFF dff2(data[2],clk,reset,q[2]);
    DFF dff1(data[1],clk,reset,q[1]);
    DFF dff0(data[0],clk,reset,q[0]);
    
endmodule