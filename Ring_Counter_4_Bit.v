module Ring_Counter_4_Bit(
    input Clk,
    input Reset,
    output reg [3:0] X
    );

initial X = 4'b1000;

always @ (posedge Clk) begin
    if (Reset==1) X <= 4'b1000;
    else X <= {X[0],X[3:1]};
end
    
endmodule
