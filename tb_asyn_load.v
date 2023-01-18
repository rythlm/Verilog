module tb_asyn_load;
	reg rst_n;
	reg load;
	reg [3:0] in;
	reg clk;
	
	wire [3:0] out;

asyn_load uut(
	.rst_n(rst_n),
	.load(load),
	.in(in),
	.clk(clk),
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
#50
    in = 4'hC;
#225
    in = 4'hF;
#25
	load = 1;
#100
	load = 0;
end

always begin
#50
	clk = ~clk;
end

endmodule
