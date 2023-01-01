`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2022 04:42:09 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
    input logic reset, clk, SA, SB,
    output logic [2:0] LA, LB
    );
    logic [2:0] cState, nState;
    
    
    always_ff @(posedge clk, posedge reset)
        if (reset) cState <= 3'b000;
        else cState <= nState;
     
    assign nState[2] = cState[2] & ~cState[1] |
                        cState[2] & cState[1] & ~cState[0] |
                        ~cState[2] & cState[1] & cState[0];
    
    assign nState[1] = ~cState[2] & ~ cState[1] & cState[0] |
                        cState[1] & ~cState[0] |
                        cState[2] & ~ cState[1] & cState[0];
    
    assign nState[0] = ~cState[2] & ~cState[1] & ~cState[0] & SB |
                        cState[1] & ~cState[0] |
                        cState[2] & ~cState[1] & ~cState[0] & ~SB |
                        cState[2] & ~cState[1] & ~cState[0] & SA;
                        
    logic [7:0] minterms;
    Decoder dec(cState, minterms);
                        
    assign LA[2] = ~(minterms[0]) & ~(minterms[1]) & ~(minterms[7]);
    assign LA[1] = ~(minterms[1]) & ~(minterms[7]);
    assign LA[0] = 1'b1;
    
    assign LB[2] = ~(minterms[3]) & ~(minterms[4]) & ~(minterms[5]);
    assign LB[1] = ~(minterms[3]) & ~(minterms[5]); 
    assign LB[0] = 1'b1;
    
    
    
endmodule
