module Register_4_Bit(
    input wire [3:0] D,
    input Load,
    input Clk,
    output [3:0] Q
    );  

wire [3:0] X;

MUX_2x1 M3 (D[3], Q[3], Load, X[3]);
MUX_2x1 M2 (D[2], Q[2], Load, X[2]);
MUX_2x1 M1 (D[1], Q[1], Load, X[1]);
MUX_2x1 M0 (D[0], Q[0], Load, X[0]);

D_Flip_Flop D3 (X[3], Clk, Q[3]);
D_Flip_Flop D2 (X[2], Clk, Q[2]);
D_Flip_Flop D1 (X[1], Clk, Q[1]);
D_Flip_Flop D0 (X[0], Clk, Q[0]);
    
endmodule
