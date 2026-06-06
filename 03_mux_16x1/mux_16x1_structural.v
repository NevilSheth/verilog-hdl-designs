module mux_16x1_structural(I,S,Y);

input [15:0] I;
input [3:0] S;
output Y;

wire y0,y1,y2,y3;

mux_4x1_gate m0(S[1],S[0],I[3],I[2],I[1],I[0],y0);
mux_4x1_gate m1(S[1],S[0],I[7],I[6],I[5],I[4],y1);
mux_4x1_gate m2(S[1],S[0],I[11],I[10],I[9],I[8],y2);
mux_4x1_gate m3(S[1],S[0],I[15],I[14],I[13],I[12],y3);

mux_4x1_gate m4(S[3],S[2],y3,y2,y1,y0,Y);

endmodule