module SIPO_Register_4_Bit(
    input X,
    input Clk,
    output [3:0] Y
    );
    
D_Flip_Flop D3 (X, Clk, Y[3]);    
D_Flip_Flop D2 (Y[3], Clk, Y[2]);
D_Flip_Flop D1 (Y[2], Clk, Y[1]);
D_Flip_Flop D0 (Y[1], Clk, Y[0]);

endmodule
