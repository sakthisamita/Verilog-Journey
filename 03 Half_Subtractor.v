module Half_Subtractor(
    input A,
    input B,
    output Difference,
    output Borrow
    );

wire Abar;
    
xor (Difference, A, B);
not (Abar, A);
and (Borrow, Abar, B);
    
endmodule
