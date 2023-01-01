`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 02:38:01 PM
// Design Name: 
// Module Name: SignedComparator_tb
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


module SignedComparator_tb(
    );
    logic signed [3:0] a, b;
    logic a_gt_b, a_lt_b, a_eq_b;
    
    SignedComparator comp(a,b,a_gt_b,a_lt_b,a_eq_b);
    
    initial begin
        a = 4'b1000; b = 4'b1001; #10;
        a = 4'b0010; b = 4'b1001; #10;
        a = 4'b0010; b = 4'b0001; #10;
        a = 4'b0010; b = 4'b0101; #10;
        a = 4'b0010; b = 4'b0010; #10;
        a = 4'b1010; b = 4'b1010; #10;
    end 
endmodule
