module sr_flipflop(s, r, q, clk, reset);

input s, r, clk, reset;
output reg q;

always @(posedge clk)
begin
    if (reset == 1'b1)
    begin
        q <= 1'b0;
    end
    else if (s == 1'b1 && r == 1'b0)
    begin
        q <= 1'b1;
    end
    else if (s == 1'b0 && r == 1'b1)
    begin
        q <= 1'b0;
    end
end

endmodule