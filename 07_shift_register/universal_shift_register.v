module universal_shift_register(clk,sl,sr,pin,q,sel);

input clk;
input sl;
input sr;
input [3:0] pin;
input [1:0] sel;
output reg [3:0] q;

always @(posedge clk)
begin
    case(sel)
        2'b00: q <= q;
        2'b01: q <= {sr,q[3:1]};
        2'b10: q <= {q[2:0],sl};
        2'b11: q <= pin;
    endcase
end

endmodule