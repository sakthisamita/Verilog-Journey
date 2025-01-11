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
