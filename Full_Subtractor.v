`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 01:24:55
// Design Name: 
// Module Name: Full_Subtractor
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


module Full_Subtractor(
    input A,
    input B,
    input Bin,
    output Difference,
    output Borrow
    );
    
wire P, Q, R;

Half_Subtractor HS1 (A, B, P, Q);
Half_Subtractor HS2 (P, Bin, Difference, R);
or (Borrow, Q, R);
    
endmodule
