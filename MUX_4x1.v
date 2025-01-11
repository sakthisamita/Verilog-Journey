module MUX_4x1(
    input I3,
    input I2,
    input I1,
    input I0,
    input S1,
    input S0,
    output Y
    );
    
wire P, Q;

MUX_2x1 M1 (I3, I2, S0, P);
MUX_2x1 M2 (I1, I0, S0, Q);
MUX_2x1 M3 (P, Q, S1, Y);
    
endmodule
