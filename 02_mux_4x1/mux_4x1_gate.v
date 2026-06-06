module mux_4x1_gate(s1,s0,i3,i2,i1,i0,y);

input s1,s0,i3,i2,i1,i0;
output y;

wire s1n,s0n;

not n1(s1n,s1);
not n2(s0n,s0);

wire w1,w2,w3,w4;

and a1(w1,s1n,s0n,i0);
and a2(w2,s1n,s0,i1);
and a3(w3,s1,s0n,i2);
and a4(w4,s1,s0,i3);

or o1(y,w1,w2,w3,w4);

endmodule