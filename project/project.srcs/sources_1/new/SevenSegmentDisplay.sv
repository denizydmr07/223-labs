`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2022 03:13:05 PM
// Design Name: 
// Module Name: SevenSegmentDisplay
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


module SevenSegmentDisplay(
    input logic clk,
    //input logic [3:0] input3, input2, input1, input0,
    output logic [6:0] cathodes,
    output logic [3:0] anode,
    input logic display_add_or_sub,display_sorter,
    input logic [3:0] RF_rd1,RF_rd2,
    input logic [2:0] AS_constant,
    input logic [3:0] RF_wd,
    input logic display
    );
    
    reg [17:0] counter = 1;
    
    always_ff@(posedge clk) begin
        counter <= counter + 1;
    end
    
    reg [3:0] currentdata;
    reg [3:0] currentanode;
    
    always@(counter) begin
    //always@(counter) begin
    //always_ff@(posedge clk) begin
        case (counter[17:16])
            0 : begin
                if (display_add_or_sub || display_sorter) begin
                    currentdata <= RF_wd;
                end
                else if (display) begin
                    currentdata <= RF_rd1;
                end
                currentanode = 4'b1110;
            end
            1 : begin
                currentanode = 4'b1101;
            end
            2 : begin
                currentdata <= RF_rd2;
                currentanode = 4'b1011;
            end
            3 : begin
                if (display_add_or_sub) begin
                    currentdata <= RF_rd1;
                end
                else if (display_sorter | display) begin
                    currentdata <= AS_constant;
                end
                currentanode = 4'b0111;
            end
            default : begin
                currentdata = 4'b0000;
                currentanode = 4'b1111;
            end
        endcase
    end
    
    reg [6:0] local_cathodes;
    
    always_comb begin
        if (!display_add_or_sub && !display_sorter && !display) begin
            local_cathodes <= 7'b1111111;
        end
        if (currentanode == 4'b1101) begin
            local_cathodes <= 7'b1111111;
        end
        else if (currentanode == 4'b1011 && !display_add_or_sub) begin
            local_cathodes <= 7'b1111111;
        end
        else begin
            case (currentdata)
               0 : local_cathodes = 7'b1000000; //t
               1 : local_cathodes = 7'b1111001; //
               2 : local_cathodes = 7'b0100100; //
               3 : local_cathodes = 7'b0110000; //t
               4 : local_cathodes = 7'b0011001; //
               5 : local_cathodes = 7'b0010010; //
               6 : local_cathodes = 7'b0000010; //t
               7 : local_cathodes = 7'b1111000; //t
               8 : local_cathodes = 7'b0000000;
               9 : local_cathodes = 7'b1111000;
               10: local_cathodes = 7'b0000010;
               11: local_cathodes = 7'b0010010;
               12: local_cathodes = 7'b0011001;
               13: local_cathodes = 7'b0110000;
               14: local_cathodes = 7'b0100100;
               15: local_cathodes = 7'b1111001;
            endcase
        end
    end
    
    assign anode = currentanode;
    assign cathodes = local_cathodes;
    
endmodule
