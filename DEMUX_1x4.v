module DEMUX_1x4(
    input S1,
    input S0,
    input X,
    output reg Y3,
    output reg Y2,
    output reg Y1,
    output reg Y0
    );
    
always @ (S1 or S0 or X) begin
    Y3 = S1 & S0 & X;
    Y2 = S1 & ~S0 & X;
    Y1 = ~S1 & S0 & X;
    Y0 = ~S1 & ~S0 & X;
end
    
endmodule
