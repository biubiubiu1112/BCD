`timescale 1 ns / 1 ps
module bcd_tb;
	reg [7:0] data_in;
	wire [3:0] unit;
	wire [3:0] decade;
	wire [1:0] hundred;
	reg en;
	//reg clk;
	
	initial
	begin
		en = 1;
		//clk = 0;
		data_in = 8'b0000_0000;
		//#10 en = 1;
		//#200 en = 0;
		    // data_in = 8'b0001_1111;
		//#100 en = 1;
	end
//always #10 clk = ~clk;
	always #1 data_in = data_in + 1;
BCD uut(
	.data_in(data_in),
	.unit(unit),
	.decade(decade),
	.hundred(hundred),
	.en(en)
	
);


endmodule
