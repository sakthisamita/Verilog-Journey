module Parking_Management_System(
    input [9:0] cars, // 10 slots in total
    output reg [3:0] occupied,
    output reg [3:0] vacant
    );
    
    always @ cars begin
        occupied = cars[0] + cars[1]+ cars[2] + cars[3] + cars[4] + cars[5] + cars[6] + cars[7] + cars[8] + cars[9];
        vacant = 4'b1010 - occupied;
    end
    
endmodule
