module counter(clk, reset, seg_7);

input clk, reset;
reg [3:0] out;
wire [3:0] bcd;
output [6:0] seg_7;
reg [25:0] div_counter;
wire one_hz_enable;

assign one_hz_enable = (div_counter == 26'd49_999_999);

always @(posedge clk)
begin
    if (reset)
        div_counter <= 26'd0;
    else if (one_hz_enable)
        div_counter <= 26'd0;
    else
        div_counter <= div_counter + 1;
end

always @(posedge clk)
begin
    if (reset)
        out <= 4'b0000;
    else if (one_hz_enable)
        out <= out + 1'b1;
end

assign bcd = out;

BCD7SEG bcd1(bcd, seg_7);

endmodule