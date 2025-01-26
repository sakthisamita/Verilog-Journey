module Moores_Machine_Pattern_Detector(Clk, Reset, Din, Z);

input Clk, Reset, Din;
output reg Z;
reg [2:0] ns, ps;
parameter Sin=3'b000, S1=3'b001, S11=3'b010, S110=3'b011, S1101=3'b100;

always @ (posedge Clk) begin
    if (Reset==1) ps<=Sin;
    else ps<=ns;
end
    
always @ (ps or Din) begin
    case (ps)
        Sin: begin
            if (Din==1) ns<=S1;
            else ns<=Sin;
        Z=0;
        end
        Sin: begin
            if (Din==1) ns<=S1;
            else ns<=Sin;
        Z=0;
        end
        S1: begin
            if (Din==1) ns<=S11;
            else ns<=Sin;
        Z=0;
        end
        S11: begin
            if (Din==1) ns<=S11;
            else ns<=S110;
        Z=0;
        end
        S110: begin
            if (Din==1) ns<=S1101;
            else ns<=Sin;
        Z=1;
        end
        S1101: begin
            if (Din==1) ns<=S11;
            else ns<=Sin;
        Z=0;
        end
    endcase
end

endmodule
