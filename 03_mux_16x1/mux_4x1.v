module mux_4x1(s1,s0,i3,i2,i1,i0,y);

input s1,s0,i3,i2,i1,i0;
output reg y;

always @(*)
begin
    case({s1,s0})
        2'b00: y = i0;
        2'b01: y = i1;
        2'b10: y = i2;
        2'b11: y = i3;
    endcase
end

endmodule