`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2022 04:51:59 PM
// Design Name: 
// Module Name: FA
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


module FA(
    input logic a,b,cin,
    output logic s, cout
    );
    always@(a or b or cin)
    begin
        s <= a ^ b ^ cin;
        cout <= a&b | a&cin | b&cin;
    end
endmodule
