module four_bit_2to1muxV2 (sel,a,b,chosen);
 
	input sel;
	input[3:0] a, b;
	output reg[3:0] chosen;
	
	always @(a,b,sel) begin
		if (sel == 1'b0) //changed to 1'b0
			chosen = a;
		else
			chosen = b;
	end
 
endmodule
