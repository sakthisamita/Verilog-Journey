module SR_Flip_Flop(S, R, Clk, Q, Qbar);
    
    input wire S, R, Clk;
    output reg Q, Qbar;
    
    always @ (posedge Clk) begin
        if (S==1 && R==0) begin
            Q<=1; Qbar<=0;
        end
        else if (S==0 && R==1) begin
            Q<=0; Qbar<=1;
        end
        else if (S==0 && R==0) begin
            Q<=Q; Qbar<=Qbar;
        end
    end
    
endmodule
