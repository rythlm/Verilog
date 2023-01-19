module tb_bool_func_assign;
	//Inputs
	reg x;
	reg y;
	reg z;
	reg [2:0] x_y_z;
	
	//Outputs
	wire f;
	integer i, j, k;
	
//Instantiate Unit Under Test
bool_func_assign uut(
	.x(x),
	.y(y),
	.z(z),
	.f(f)
);

initial begin
	//Initialize Inputs
	x = 0;
	y = 0;
	z = 0;
	
	//Wait 100ns for global reset to finish
	#100;
	
	//Add stimulus here
	for (i=0; i<2**3; i=i+1) begin		//** Power Operator
		#10;
	end
end
	
always @(*) begin		//Concatenation Operator
	{x, y, z} = i;
end
endmodule

