module Decoder_3x8(
    input E,
    input X2,
    input X1,
    input X0,
    output Y7,
    output Y6,
    output Y5,
    output Y4,
    output Y3,
    output Y2,
    output Y1,
    output Y0
    );
    
wire P, Q, R;

not (P, X2);
and (Q, X2, E);
and (R, P, E);
Decoder_2x4 D1 (Q, X1, X0, Y7, Y6, Y5, Y4);
Decoder_2x4 D2 (R, X1, X0, Y3, Y2, Y1, Y0);

endmodule
