module pipo(clk,reset,pi,po);

input clk,reset;
input [3:0] pi;
output reg [3:0] po;

always @(posedge clk)
begin
    if(reset)
        po <= 4'b0000;
    else
        po <= pi;
end

endmodule