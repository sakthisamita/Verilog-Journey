module D_Flip_Flop(D, Clk, Q);

    input wire D, Clk;
    output reg Q;
    
    always @ (posedge Clk) begin
        if (D==0) Q<=0;
        else if (D==1) Q<=1;
    end
    
endmodule
