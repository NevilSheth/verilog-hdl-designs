module BCD7SEG(BCD, Seg_7);

input wire [3:0] BCD;
output reg [6:0] Seg_7;

always @(BCD)
begin
    case (BCD)

    4'b0000: Seg_7 = 7'b0000001;
    4'b0001: Seg_7 = 7'b1001111;
    4'b0010: Seg_7 = 7'b0010010;
    4'b0011: Seg_7 = 7'b0000110;
    4'b0100: Seg_7 = 7'b1001100;
    4'b0101: Seg_7 = 7'b0100100;
    4'b0110: Seg_7 = 7'b0100000;
    4'b0111: Seg_7 = 7'b0001111;
    4'b1000: Seg_7 = 7'b0000000;
    4'b1001: Seg_7 = 7'b0000100;

    4'b1010: Seg_7 = 7'b0001000;
    4'b1011: Seg_7 = 7'b0000011;
    4'b1100: Seg_7 = 7'b1000110;
    4'b1101: Seg_7 = 7'b0100001;
    4'b1110: Seg_7 = 7'b0000110;
    4'b1111: Seg_7 = 7'b0001110;

    default: Seg_7 = 7'b0000110;

    endcase
end

endmodule