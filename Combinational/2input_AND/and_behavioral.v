module and2_if (
	input x,
	input y,
	output f
);
	reg f;
	
always @(*) begin
	if(x == 1 && y ==1)
		f = 1;
	else
		f = 0;
end
endmodule
