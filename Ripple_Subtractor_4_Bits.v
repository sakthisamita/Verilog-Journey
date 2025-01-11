module Ripple_Subtractor_4_Bits(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Difference,
    output Borrow
    );

wire X, Y, Z;
 
Full_Subtractor FS1 (A[0], B[0], 0, Difference[0], X);
Full_Subtractor FS2 (A[1], B[1], X, Difference[1], Y);
Full_Subtractor FS3 (A[2], B[2], Y, Difference[2], Z);
Full_Subtractor FS4 (A[3], B[3], Z, Difference[3], Borrow);

    
endmodule
