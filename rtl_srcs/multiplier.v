module multiplier (a_in, b_in, mul_out);

	parameter m=12;
	
	input [m-1:0] a_in, b_in;
	output [2*m-1:0] mul_out;
	
	assign mul_out = a_in * b_in;

endmodule