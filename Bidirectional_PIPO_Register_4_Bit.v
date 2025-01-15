module Bidirectional_PIPO_Register_4_Bit(
    input [3:0] D,
    input [1:0] Ctrl,
    input XL,
    input XR,
    input Clk,
    output [3:0] Q
    );
    
wire [3:0] X;

MUX_4x1 M3 (D[3], XR, Q[2], Q[3], Ctrl[1], Ctrl[0], X[3]);
MUX_4x1 M2 (D[2], Q[3], Q[1], Q[2], Ctrl[1], Ctrl[0], X[2]);
MUX_4x1 M1 (D[1], Q[2], Q[0], Q[1], Ctrl[1], Ctrl[0], X[1]);
MUX_4x1 M0 (D[0], Q[1], XL, Q[0], Ctrl[1], Ctrl[0], X[0]);

D_Flip_Flop D3 (X[3], Clk, Q[3]);
D_Flip_Flop D2 (X[2], Clk, Q[2]);
D_Flip_Flop D1 (X[1], Clk, Q[1]);
D_Flip_Flop D0 (X[0], Clk, Q[0]);
  
endmodule
