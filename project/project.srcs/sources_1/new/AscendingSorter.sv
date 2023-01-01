`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2022 01:36:44 PM
// Design Name: 
// Module Name: AscendingSorter
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


module AscendingSorter(
    input logic asc_high_des_low,
    input logic AS_sort,
    input logic AS_we,
    input logic AS_re,
    input logic [2:0] AS_wa,
    input logic [3:0] AS_wd,
    input logic [2:0] AS_ra,
    output logic [3:0] AS_rd,
    input logic [2:0] AS_constant
    );
    logic [3:0] arr[0:7];
    reg [3:0] count = 0; //new
    
    initial begin
        for (int i = 0; i < 8; i = i + 1) begin
            arr[i] = 0;
        end
    end
    
    always@(AS_we,AS_re,AS_wa, AS_wd, AS_sort,AS_ra,asc_high_des_low) begin
        if (AS_we) begin
            arr[AS_wa] <= AS_wd;
            count <= count + 1; //new
        end
        if (AS_sort) begin
            if (asc_high_des_low) begin
                for (int i = 0; i < count; i = i + 1) begin //new
                    automatic logic [3:0] min = arr[i];
                    automatic int minIndex = i;
                    for (int j = i + 1; j < count; j = j + 1) begin //new
                        if (arr[j][3] > min[3]) begin
                            min = arr[j];
                            minIndex = j;
                        end
                        else if (arr[j][3] == min[3]) begin
                            if (arr[j][2:0] < min[2:0]) begin
                                min = arr[j];
                                minIndex = j;
                            end
                        end
                    end
                    arr[minIndex] = arr[i];
                    arr[i] = min;
                end
                count = 0;
            end
            else if (!asc_high_des_low) begin
                for (int i = 0; i < count; i = i + 1) begin //new
                    automatic logic [3:0] max = arr[i];
                    automatic int maxIndex = i;
                    for (int j = i + 1; j < count; j = j + 1) begin //new
                        if (arr[j][3] < max[3]) begin
                            max = arr[j];
                            maxIndex = j;
                        end
                        else if (arr[j][3] == max[3]) begin
                            if (arr[j][2:0] > max[2:0]) begin
                                max = arr[j];
                                maxIndex = j;
                            end
                        end
                    end
                    arr[maxIndex] = arr[i];
                    arr[i] = max;
                end
                count = 0;
            end
        end
        /*
        if (AS_re) begin
            AS_rd <= arr[AS_ra];
        end
        */
    end
    
    assign AS_rd = AS_re ? arr[AS_ra] : 4'bxxxx;

endmodule
