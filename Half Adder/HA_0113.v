module HA_0113(X, Y, Cout, Sum);

input X, Y;
output Cout, Sum;

reg [3:0] Cout, Sum;

always @(*) begin
case({X, Y})

	{1'b0, 1'b0} : begin
	Cout = 0;
	Sum = 0;
	end
	
	{1'b0, 1'b1} : begin
	Cout = 1;
	Sum = 0;
	end
	
	{1'b1, 1'b0} : begin
	Cout = 1;
	Sum = 0;
	end
	
	default : begin
	Cout = 1;
	Sum = 1;
	end
	
endcase
end

endmodule
