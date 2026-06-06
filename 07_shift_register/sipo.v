module sipo(clk,reset,Si,Po);

input clk,reset,Si;
output reg [3:0] Po;

always @(posedge clk)
begin
    if(reset)
        Po <= 4'b0000;
    else
        Po <= {Po[2:0],Si};
end

endmodule