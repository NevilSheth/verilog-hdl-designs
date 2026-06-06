module full_adder_gate(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3,w4;

xor x1(w1,a,b);
and a1(w2,a,b);
and a2(w3,b,cin);
and a3(w4,cin,a);
xor x2(sum,w1,cin);
or o1(cout,w2,w3,w4);

endmodule