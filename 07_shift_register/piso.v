module piso(clk,reset,load,pi,so);

input clk,reset,load;
input [3:0] pi;
output so;

reg [3:0] temp;

assign so = temp[3];

always @(posedge clk)
begin
    if(reset)
        temp <= 4'b0000;
    else if(load)
        temp <= pi;
    else
        temp <= {temp[2:0],1'b0};
end

endmodule