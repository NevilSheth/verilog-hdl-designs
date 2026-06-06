module mealy_without_overlap(
    input clk,
    input reset,
    input x,
    output reg y
);

reg [1:0] state, next_state;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10;

always @(posedge clk)
begin
    if(reset)
        state <= S0;
    else
        state <= next_state;
end

always @(*)
begin
    case(state)
        S0: if(x)
                next_state = S1;
            else
                next_state = S0;

        S1: if(x)
                next_state = S1;
            else
                next_state = S2;

        S2: if(x)
                next_state = S0;
            else
                next_state = S0;

        default: next_state = S0;
    endcase
end

always @(*)
begin
    if(state == S2 && x == 1)
        y = 1;
    else
        y = 0;
end

endmodule