module Comparator_1_bit(
    input X,
    input Y,
    output Greater,
    output Equal,
    output Less
    );
    
assign Greater = X & ~Y;
assign Equal = (~X & ~Y) | (X & Y);
assign Less = ~X & Y;
    
endmodule
