module siso(temp,clk,reset,Si,So);

input clk,reset,Si;
output reg [3:0] temp;
output reg So;

always @(posedge clk)
begin
    if(reset)
        temp <= 4'b0000;
    else
        temp <= {temp[2:0],Si};

    So <= temp[3];
end

endmodule