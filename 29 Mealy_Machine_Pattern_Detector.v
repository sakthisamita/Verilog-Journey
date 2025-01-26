module Mealy_Machine_Pattern_Detector(Clk, Reset, X, Z);

input Clk, Reset, X;
output reg Z;
reg [1:0] ns, ps;
parameter Sin=2'b00, S1=2'b01, S11=2'b10, S110=2'b11;

always @ (posedge Clk) begin
    if (Reset==1) ps<=Sin;
    else ps<=ns;
end

always @ (ps or X) begin
    case (ps)
        Sin: begin
            if (X==1) ns<=S1;
            else ns<=Sin;
        end
        S1: begin
            if (X==1) ns<=S11;
            else ns<=Sin;
        end
        S11: begin 
            if (X==1) ns<=S11;
            else ns<=S110;
        end
        S110: begin
            if (X==1) begin
                ns<=S1;
                Z=1;
            end
            else ns<=Sin; 
        end
    endcase
end

always @(ps, X) begin
    case(ps) 
        Sin: Z = 0;
        S1: Z = 0;
        S11: Z = 0;
        S110: begin
            if(X==1) Z = 1;
            else Z = 0;
        end
        default: Z = 0;
 endcase
end

endmodule
