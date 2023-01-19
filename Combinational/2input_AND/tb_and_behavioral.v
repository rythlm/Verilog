module tb_and2_if;
	reg x;
	reg y;
	wire f;
	
and2_if uut(
	.x(x),
	.y(y),
	.f(f)
);

initial begin
	x = 0;
	y = 0;
#100
	x = 0; y = 1;
#100
	x = 1; y = 0;
#100
	x = 1; y = 1;
end
endmodule
