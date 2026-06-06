module mux_4x1_dataflow(s1,s0,i3,i2,i1,i0,y);

input s1,s0,i3,i2,i1,i0;
output y;

assign y = (~s1 & ~s0 & i0) |
           (~s1 &  s0 & i1) |
           ( s1 & ~s0 & i2) |
           ( s1 &  s0 & i3);

endmodule