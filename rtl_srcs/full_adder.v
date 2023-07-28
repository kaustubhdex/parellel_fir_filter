module full_adder (a_in, b_in, sum_out);

   parameter n=24;
	
	input [n-1:0] a_in, b_in;
	output [n-1:0] sum_out;
	
	assign sum_out = a_in + b_in;
	
endmodule