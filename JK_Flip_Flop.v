module JK_Flip_Flop(J, K, Clk, Q);

input J, K, Clk;
output reg Q;

always @ (posedge Clk) begin
    if (J==1 && K==0) Q=1;
    else if (J==0 && K==1)  Q=0;
    else if (J==0 && K==0)  Q=Q;
    else if (J==1 && K==1)  Q=~Q;
end

endmodule
