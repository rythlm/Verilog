module lut_sine(
	input [4:0] addr,
	output reg [7:0] data
);

function [7:0] data_line;
	input [4:0] addr;
	begin
		case(addr)
			0: data_line = 3;	1: data_line = 9;
			2: data_line = 16;	3: data_line = 22;
			4: data_line = 28;	5: data_line = 34;
			6: data_line = 40;	7: data_line = 46;
			8: data_line = 51;	9: data_line = 57;
			10: data_line = 63;	11: data_line = 68;
			12: data_line = 73;	13: data_line = 78;
			14: data_line = 83;	15: data_line = 88;
			16: data_line = 92;	17: data_line = 96;
			18: data_line = 100;	19: data_line = 104;
			20: data_line = 107;	21: data_line = 111;
			22: data_line = 113;	23: data_line = 116;
			24: data_line = 118;	25: data_line = 121;
			26: data_line = 122;	27: data_line = 124;
			28: data_line = 125;	29: data_line = 126;
			30: data_line = 127;	31: data_line = 127;
		endcase
	end
endfunction

always @(*) begin
	data = data_line(addr);
end
endmodule

