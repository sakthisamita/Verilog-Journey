module Gray_to_Binary_Converter(
    input [3:0] G,
    input [3:0] B
    );
    
assign B[3] = G[3];
assign B[2] = G[3] ^ G[2];
assign B[1] = B[2] ^ G[1];
assign B[0] = B[1] ^ G[0];
    
endmodule
