module rom(clk,addr,dout);

input clk;
input [3:0] addr;
output reg [7:0] dout;

reg [7:0] mem[15:0];
integer i;

initial
begin
    for(i=0; i<16; i=i+1)
    begin
        mem[i] = i + 1;
    end
end

always @(posedge clk)
begin
    dout <= mem[addr];
end

endmodule