module tb_PC;

	reg clock, reset;
	reg [31:0] PCin;
	
	wire [31:0] PCout;

PC dut(.clock(clock),.reset(reset),.PCin(PCin),.PCout(PCout));

initial clock=0;
always #5 clock=~clock;

initial begin

#10 reset=1 ;

#10 reset=0;PCin=PCout;

#10 reset=0;PCin=PCout;


end
	

endmodule
