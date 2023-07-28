module decoder_2x4(in0, in1, out0, out1, out2, out3, en);
		input in0, in1, en;
		output reg out0, out1, out2, out3;
		
		always@(in0, in1, en)
		begin
		if(~en) begin
			out0 <= 1'd0;
			out1 <= 1'd0;
			out2 <= 1'd0;
			out3 <= 1'd0;
			end
		else begin
			case({in0,in1})
				2'b00:begin 
						out0 <= 1'd1;
						out1 <= 1'd0;
						out2 <= 1'd0;
						out3 <= 1'd0;
						end
				2'b01:begin
						out0 <= 1'd0;
						out1 <= 1'd1;
						out2 <= 1'd0;
						out3 <= 1'd0;
						end
				2'b10:begin
						out0 <= 1'd0;
						out1 <= 1'd0;
						out2 <= 1'd1;
						out3 <= 1'd0;
						end
				2'b11:begin
						out0 <= 1'd0;
						out1 <= 1'd0;
						out2 <= 1'd0;
						out3 <= 1'd1;
						end
				default:begin
						  out0 <= 1'd0;
						  out1 <= 1'd0;
						  out2 <= 1'd0;
						  out3 <= 1'd0;
						  end
			endcase
			end
		end
endmodule