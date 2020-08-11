module tb_instmem;

	reg clock;
	reg [31:0] address;
	
	wire [31:0] inst;
	


InstMem dut(.clock(clock),.address(address),.inst(inst));

initial clock = 0;
always #5 clock = ~clock;

initial begin

#10 address=0;
#10 address=1;
#10 address=2;
#10 address=3;
#10 address=4;

end




endmodule;



