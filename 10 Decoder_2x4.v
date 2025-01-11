module Decoder_2x4(
    input E,
    input X1,
    input X0,
    output Y3,
    output Y2,
    output Y1,
    output Y0
    );
    
assign Y3 = E & X1 & X0;
assign Y2 = E & X1 & ~X0;
assign Y1 = E & ~X1 & X0;
assign Y0 = E & ~X1 & ~X0;
   
endmodule
