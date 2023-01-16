module fa_0107 (A, B, Cin, Sum, Cout);

input A, B, Cin;
output Sum, Cout;

reg [3:0] Sum, Cout;

always @(*) begin
case ({A, B, Cin})
		{1'b0, 1'b0, 1'b0} : begin	
			Sum = 0; 
			Cout = 0;
			end
		{1'b0, 1'b0, 1'b1} :	begin
			Sum = 1; 
			Cout = 0;
			end
		{1'b0, 1'b1, 1'b0} :	begin
			Sum = 1; 
			Cout = 0;
			end
		{1'b0, 1'b1, 1'b1} :	begin
			Sum = 0; 
			Cout = 1;
			end
		{1'b1, 1'b0, 1'b0} :	begin
			Sum = 1; 
			Cout = 0;
			end
		{1'b1, 1'b0, 1'b1} :	begin
			Sum = 0; 
			Cout = 1;
			end
		{1'b1, 1'b1, 1'b0} :	begin
			Sum = 0; 
			Cout = 1;
			end
		default : begin
			Sum = 1; 
			Cout = 1;
			end
endcase
end
endmodule


/*
assign G = (A & ~B) | (~A & B);
assign Sum = (G & ~Cin) | (~G & Cin);
assign Cout = (A & B) | (G & Cin);
// gate level_1

assign Sum = A ^ B ^ Cin;
assign Cout = (A & B) | (Cin & (A ^ B));
// gate level_2

*/