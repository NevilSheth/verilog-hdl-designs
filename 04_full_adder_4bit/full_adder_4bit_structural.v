module full_adder_4bit_structural(A, B, CIN, SUM, COUT);

input [3:0] A, B;
input CIN;
output [3:0] SUM;
output COUT;

wire c0, c1, c2;

full_adder a1(A[0], B[0], CIN, SUM[0], c0);
full_adder a2(A[1], B[1], c0, SUM[1], c1);
full_adder a3(A[2], B[2], c1, SUM[2], c2);
full_adder a4(A[3], B[3], c2, SUM[3], COUT);

endmodule