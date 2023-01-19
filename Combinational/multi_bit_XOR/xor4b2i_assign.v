module xor4b2i_assign(	//xor_4bit_2input_assign (data flow)
	input [3:0] x,
	input [3:0] y,
	output [3:0] f
);

assign f = x ^ y;	//xor = ^
endmodule
