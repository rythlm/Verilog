module xor4b2i_primitive(	//xor_4bit_2input_primitive (gate)
	input [3:0] x,
	input [3:0] y;
	output [3:0] f
);

xor INS0 [3:0] (f, x, y);
endmodule
