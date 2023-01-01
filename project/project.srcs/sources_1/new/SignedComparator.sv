`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2022 02:00:16 PM
// Design Name: 
// Module Name: SignedComparator
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


module SignedComparator(
    input logic signed [3:0] a, b,
    output logic a_gt_b, a_lt_b, a_eq_b
    );
    always@(a, b)
    begin
        if (a[3] > b[3]) // a = 1xxx and b = 0xxx
        begin
            a_lt_b <= 1;
            a_gt_b <= 0;
            a_eq_b <= 0;
        end
        else if (a[3] < b[3]) // a = 0xxx and b = 1xxx
        begin
            a_gt_b <= 1;
            a_lt_b <= 0;
            a_eq_b <= 0;
        end
        else 
        begin
            if (a[2] < b[2])
            begin
                a_lt_b <= 1;
                a_gt_b <= 0;
                a_eq_b <= 0;
            end
            else if (a[2] > b[2])
            begin
                a_gt_b <= 1;
                a_lt_b <= 0;
                a_eq_b <= 0;
            end
            else if( a[2] < b[2])
            begin
                a_lt_b <= 1;
                a_gt_b <= 0;
                a_eq_b <= 0;
            end
            else if( a[1] > b[1])
            begin
                a_gt_b <= 1;
                a_lt_b <= 0;
                a_eq_b <= 0;
            end
            else if( a[1] < b[1])
            begin
                a_lt_b <= 1;
                a_gt_b <= 0;
                a_eq_b <= 0;
            end
            else if( a[0] > b[0])
            begin
                a_gt_b <= 1;
                a_lt_b <= 0;
                a_eq_b <= 0;
            end
            else if( a[0] < b[0])
            begin
                a_lt_b <= 1;
                a_gt_b <= 0;
                a_eq_b <= 0;
            end
            else
            begin
                a_eq_b <= 1;
                a_lt_b <= 0;
                a_gt_b <= 0;
            end
        end
    end

endmodule
