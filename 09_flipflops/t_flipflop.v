module t_flipflop(t, q, clk, reset);

input t, clk, reset;
output reg q;

always @(posedge clk)
begin
    if (reset == 1'b1)
    begin
        q <= 1'b0;
    end
    else if (t == 1'b1)
    begin
        q <= ~q;
    end
end

endmodule