module tb_lut_sine;
	//Inputs
	reg [4:0] addr;
	
	//Outputs
	wire [7:0] data;
	
	reg signed [7:0] full_sine;
	integer i, j;

//Instantiate Unit Under Test
lut_sine uut (
	.addr(addr),
	.data(data)
);

initial begin
	//Initiialize Inputs
	addr = 0;
	
	//Wait 100ns for global reset to finish
	#100;
	
	//Add stimulus here
	for (j=0; j<4; j=j+1)
		for (i=0; i<32; i=i+1)
			#10;
end
always @(*) begin
	if (j==0) begin
		addr = i;
		full_sine = data;
	end
	if (j==1) begin		//y-axis mirror
		addr = 31 - i;
		full_sine = data;
	end
	if (j==2) begin		//x-axis mirror
		addr = i;
		full_sine = -data;
	end
	if (j==3) begin		//x-axis, y-axis mirror
		addr = 31 - i;
		full_sine = -data;
	end
end
endmodule

