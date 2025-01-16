module Asynchronous_Counter_4_Bit(
    input Clk,
    output reg [3:0] X
    );

initial X = 4'b0;
    
always @ (negedge Clk) X[0]=~X[0];
always @ (negedge X[0]) X[1]=~X[1];
always @ (negedge X[1]) X[2]=~X[2];
always @ (negedge X[2]) X[3]=~X[3];
    
endmodule
