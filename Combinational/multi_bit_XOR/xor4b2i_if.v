module xor4b2i_if(
	input [3:0] x,
	input [3:0] y,
	output reg [3:0] f
);
integer i;

always @(*) begin
	for (i=0 ; i<4 ; i=i+1) begin	//loop statement using 'for'
		if (x[i] == y[i])	//if statement
			f[i] = 1;
		else
			f[i] = 0;
	end
end
endmodule
