module tb_xor4b2i_if;
	//Inputs
	reg [3:0] x;
	reg [3:0] y;
	
	//Outputs
	wire [3:0] f;
	integer i, j;
	
//instantiate the Unit Under Test
xor4b2i_if uut(
	.x(x),
	.y(y),
	.f(f)
);

initial begin
	//Initiate Inputs
	x = 0;
	y = 0;
	
	//Wait 100ns for global reset to finish
	#100;
	
	//Add stimulus here
	for (i=0; i<16; i=i+1) begin
		for (j=0; j<16; j=j+1) begin
			x = i; y = j;
		#100;
		end
	end
end
endmodule
