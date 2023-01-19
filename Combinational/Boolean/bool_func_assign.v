module bool_func_assign(
	input x,
	input y,
	input z,
	output f
);

assign f = (~x & ~y & z) | (~x & y & z) | (x & ~y);

endmodule
