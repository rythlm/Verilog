module tb_fa_0107;

reg A, B, Cin;
wire Sum, Cout;

fa_0107 uut(
	.A(A),
	.B(B),
	.Cin(Cin),
	.Sum(Sum),
	.Cout(Cout)
);

initial begin
	A = 0;
	B = 0;
	Cin = 0;
end

always #(50) begin
	Cin = ~Cin;
end

always #(100) begin
	B = ~B;
end

always #(200) begin
	A = ~A;
end

endmodule
