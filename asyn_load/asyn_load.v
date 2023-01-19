module asyn_load(rst_n, clk, load, in, out);
	input rst_n;
	input clk;
	input load;
	input [3:0] in;
	output [3:0] out;
	
	reg [3:0] out;
	
	always @(posedge clk or negedge rst_n) begin

		if(!rst_n)
			out <= 4'b0;
		else if(load)
			out <= in;
	end
endmodule
