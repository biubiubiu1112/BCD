module BCD
(
	input wire [7:0]		data_in,
	input wire en,
	output [3:0] 	unit,
	output [3:0]	decade,
	output [1:0]	hundred
);
	
	wire [7:0]	binary;
	reg [17:0] comb;
	// wire [3:0] cnt;
	assign binary = en?data_in:8'd0;
	//assign cnt = (en && cnt <= 4'd7)?cnt + 1: 0;
		
	always @(*)
	begin
		comb = {10'b0,binary};
		begin
			if(comb[11:8] > 4'b0100)
				comb[11:8] = comb[11:8] + 4'b0011;
			if(comb[15:12] > 4'b0100)
				comb[15:12] = comb[15:12] + 4'b0011;
			comb = {comb[16:0],1'b0};					//0
			
			if(comb[11:8] > 4'b0100)
				comb[11:8] = comb[11:8] + 4'b0011;
			if(comb[15:12] > 4'b0100)
				comb[15:12] = comb[15:12] + 4'b0011;
			comb = {comb[16:0],1'b0};					//1
			
			if(comb[11:8] > 4'b0100)
				comb[11:8] = comb[11:8] + 4'b0011;
			if(comb[15:12] > 4'b0100)
				comb[15:12] = comb[15:12] + 4'b0011;
			comb = {comb[16:0],1'b0};					//2
			
			if(comb[11:8] > 4'b0100)
				comb[11:8] = comb[11:8] + 4'b0011;
			if(comb[15:12] > 4'b0100)
				comb[15:12] = comb[15:12] + 4'b0011;
			comb = {comb[16:0],1'b0};					//3
			
			if(comb[11:8] > 4'b0100)
				comb[11:8] = comb[11:8] + 4'b0011;
			if(comb[15:12] > 4'b0100)
				comb[15:12] = comb[15:12] + 4'b0011;
			comb = {comb[16:0],1'b0};					//4
			
			if(comb[11:8] > 4'b0100)
				comb[11:8] = comb[11:8] + 4'b0011;
			if(comb[15:12] > 4'b0100)
				comb[15:12] = comb[15:12] + 4'b0011;
			comb = {comb[16:0],1'b0};					//5
			
			if(comb[11:8] > 4'b0100)
				comb[11:8] = comb[11:8] + 4'b0011;
			if(comb[15:12] > 4'b0100)
				comb[15:12] = comb[15:12] + 4'b0011;
			comb = {comb[16:0],1'b0};					//6
			
			if(comb[11:8] > 4'b0100)
				comb[11:8] = comb[11:8] + 4'b0011;
			if(comb[15:12] > 4'b0100)
				comb[15:12] = comb[15:12] + 4'b0011;
			comb = {comb[16:0],1'b0};					//7
			
		end
		
	end
	
	assign hundred = comb[17:16];
	assign decade = comb[15:12];
	assign unit = comb[11:8];
endmodule