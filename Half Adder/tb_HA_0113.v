module tb_HA_0113;

reg X, Y;
wire Cout, Sum;

HA_0113 uut(
	.X(X),
	.Y(Y),
	.Cout(Cout),
	.Sum(Sum)
);

initial begin
	X = 0;
	Y = 0;
end

always #(50) begin
	Y = ~Y;
end

always #(100) begin
	X = ~X;
end

endmodule
