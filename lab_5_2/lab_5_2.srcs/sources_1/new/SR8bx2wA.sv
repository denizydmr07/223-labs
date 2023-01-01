`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2022 07:30:54 PM
// Design Name: 
// Module Name: SR8bx2wA
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


module SR8bx2wA(
    input logic clk,
    input logic [7:0] la, lb,
    input logic shift, load, reset,
    output logic S
    );
    logic [7:0] dataa, datab;
    logic [7:0] outa, outb;
    logic cin, cout;
    
    always_ff@(posedge clk)
    begin
        //cin <= cout;
        if (reset)
        begin
            dataa <= 8'b00000000;
            datab <= 8'b00000000;
        end
        else if (load) 
        begin
            dataa <= la;
            datab <= lb;
            cin <= 0;
        end
        else if (shift)
        begin
            dataa[7] <= 0;
            dataa[6] <= dataa[7];
            dataa[5] <= dataa[6];
            dataa[4] <= dataa[5];
            dataa[3] <= dataa[4];
            dataa[2] <= dataa[3];
            dataa[1] <= dataa[2];
            dataa[0] <= dataa[1];
            datab[7] <= 0;
            datab[6] <= datab[7];
            datab[5] <= datab[6];
            datab[4] <= datab[5];
            datab[3] <= datab[4];
            datab[2] <= datab[3];
            datab[1] <= datab[2];
            datab[0] <= datab[1];
            cin <= cout;
        end
    end
    
    assign S = dataa[0] ^ datab[0] ^ cin;
    assign cout = dataa[0]&datab[0] | dataa[0]&cin | datab[0]&cin;
    
    DFF dff15(dataa[7],clk,reset,outa[7]);
    DFF dff14(dataa[6],clk,reset,outa[6]);
    DFF dff13(dataa[5],clk,reset,outa[5]);
    DFF dff12(dataa[4],clk,reset,outa[4]);
    DFF dff11(dataa[3],clk,reset,outa[3]);
    DFF dff10(dataa[2],clk,reset,outa[2]);
    DFF dff9(dataa[1],clk,reset,outa[1]);
    DFF dff8(dataa[0],clk,reset,outa[0]);
    
    DFF dff7(datab[7],clk,reset,outb[7]);
    DFF dff6(datab[6],clk,reset,outb[6]);
    DFF dff5(datab[5],clk,reset,outb[5]);
    DFF dff4(datab[4],clk,reset,outb[4]);
    DFF dff3(datab[3],clk,reset,outb[3]);
    DFF dff2(datab[2],clk,reset,outb[2]);
    DFF dff1(datab[1],clk,reset,outb[1]);
    DFF dff0(datab[0],clk,reset,outb[0]);
    
    
endmodule
