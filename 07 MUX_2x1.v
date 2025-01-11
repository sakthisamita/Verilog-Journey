module MUX_2x1(
    input I1,
    input I0,
    input S,
    output reg Y
    );
    
always @ (I1 or I0 or S) begin
    Y = (I1 & S) | (I0 & ~S);
end
    
endmodule
