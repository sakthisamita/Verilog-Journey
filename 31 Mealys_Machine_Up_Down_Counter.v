module Mealys_Machine_Up_Down_Counter(Clk, Dxn, Reset, Z);
    
input Clk, Reset, Dxn;
output reg [1:0] Z;
reg [1:0] State;
parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;

always @(posedge Clk or posedge Reset) begin
    if (Reset) 
        State <= S0; 
    else begin
        case (State) 
            S0: State <= (Dxn == 1) ? S1 : S3;
            S1: State <= (Dxn == 1) ? S2 : S0;
            S2: State <= (Dxn == 1) ? S3 : S1;
            S3: State <= (Dxn == 1) ? S0 : S2;
        endcase
    end
end

always @(posedge Clk) Z <= State;

endmodule
