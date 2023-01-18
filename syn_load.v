module syn_load(clk, rst_n, load, in, out);

	input clk;
	input rst_n;
	input load;
	input [3:0] in;
	output [3:0] out;
	
	reg [3:0] out;
	
	always @(posedge clk) begin
		if (!rst_n) begin
			out <= 4'b0;
		end
		else if (load) begin
			out <= in;
		end
	end

endmodule
