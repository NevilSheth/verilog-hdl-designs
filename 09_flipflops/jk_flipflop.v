module jk_flipflop(j, k, q, clk, reset);

input j, k, clk, reset;
output reg q;

always @(posedge clk)
begin
    if (reset == 1'b1)
    begin
        q <= 1'b0;
    end
    else if (j == 1'b1 && k == 1'b0)
    begin
        q <= 1'b1;
    end
    else if (j == 1'b0 && k == 1'b1)
    begin
        q <= 1'b0;
    end
    else if (j == 1'b1 && k == 1'b1)
    begin
        q <= ~q;
    end
end

endmodule