module Moores_Machine_4_Bit_Counter(Clk, Reset, Din, Z);

input Clk, Reset, Din;
output reg [1:0] Z;
reg [1:0] State;
parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

always @ (posedge Clk) begin
    if (Reset==1) State<=S0;
end

always @ (posedge Clk) begin
    case (State) 
        S0: if (Din==1) #10 State<=S1;
        S1: if (Din==1) #10 State<=S2;
        S2: if (Din==1) #10 State<=S3;
        S3: if (Din==1) #10 State<=S0;
    endcase
end

always @ (posedge Clk) #10 assign Z=State;

endmodule
