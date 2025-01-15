module Register_4_Bit_with_Clear(
    input wire [3:0] D,
    input Load,
    input Clear,
    input Clk,
    output reg [3:0] Q
    );
    
always @ (posedge Clk) begin
    if (Clear==1) Q = 4'b0000;
    else begin 
        if (Load==0) Q=Q;
        else Q=D;
    end
end
    
endmodule
