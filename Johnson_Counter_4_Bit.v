module Johnson_Counter_4_Bit(
    input Clk,
    input Reset,
    output reg [4:0] X
    );
    
initial X = 4'b0000;

always @ (posedge Clk or Reset) begin
    if (Reset==1) X <= 4'b0000;
    else X <= {~X[0],X[3:1]};
end
    
endmodule
