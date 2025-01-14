module Comparator_4_bit(
    input [3:0] A,
    input [3:0] B,
    output Greater,
    output Equal,
    output Lesser
    );
    
wire G3, G2, G1, G0, E3, E2, E1, E0, L3, L2, L1, L0;

Comparator_1_bit C3 (A[3], B[3], G3, E3, L3);  
Comparator_1_bit C2 (A[2], B[2], G2, E2, L2);  
Comparator_1_bit C1 (A[1], B[1], G1, E1, L1);  
Comparator_1_bit C0 (A[0], B[0], G0, E0, L0);  

assign Greater = G3 | (E3 & G2) | (E3 & E2 & G1) | (E3 & E2 & E1 & G0);
assign Equal = E3 & E2 & E1 & E0;
assign Lesser = L3 | (E3 & L2) | (E3 & E2 & L1) | (E3 & E2 & E1 & L0); 
    
endmodule
