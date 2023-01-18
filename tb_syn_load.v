module tb_syn_load;
	reg clk;
	reg rst_n;
	reg load;
	reg [3:0] in;
	wire [3:0] out;

syn_load uut(
	.clk(clk),
	.rst_n(rst_n),
	.load(load),
	.in(in),
	.out(out)
);
	
initial begin
	clk = 0;
	rst_n = 1;
	load = 0;
	in = 4'h0;
#100
	rst_n = 0;
	in = 4'h2;
#200
	rst_n = 1;
#100
	in = 4'hA;
#100
	load = 1;
#100
	load = 0;
#25
	in = 4'hC;
#250
	in = 4'hF;
#25
	load = 1;
#100
	load = 0;
end

always #(50) begin
	clk = ~clk;
end

endmodule
