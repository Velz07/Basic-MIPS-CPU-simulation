module tb_decoder_4bit;

reg [3:0]in;
reg en;
wire [15:0]dout;

decoder_4bit dut(in,en,dout);

initial
	begin
	$display("%d",dut.in);
	#5;
	en=1;in=4'b0110;
	$display("%d",dut.in);
	#10 en=0;
	#10 en=1;in=4'b1010;
	$display("%d",dut.in);
	end

endmodule;
