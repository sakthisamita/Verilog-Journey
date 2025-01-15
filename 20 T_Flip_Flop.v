module T_Flip_Flop(T, Clk, Q);
    
    input T, Clk;
    output reg Q;
    
    initial Q=0;
    
    always @ (posedge Clk) begin
        if (T==0) Q<=Q;
        else if (T==1) Q<=~Q;
    end
    
endmodule
