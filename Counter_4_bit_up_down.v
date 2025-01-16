module Counter_4_bit_up_down (Dxn, Reset, Clk, X);

input Dxn, Reset, Clk;
output reg [3:0] X;

// Dxn=1 - Up
// Dxn=0 - Down

initial X = 0;

always @ (posedge Clk or posedge Reset) begin
    if (Reset==1) X=0;
    else begin
        if (Dxn==1) begin
            if (X==15) X = 0;
            else X = X+1;
        end
        else begin
            if (X==0) X = 15;
            else X = X-1;
        end
    end
end

endmodule