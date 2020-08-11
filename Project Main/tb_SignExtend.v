module tb_SignExtend;

	reg [15:0] inst15_0;
	wire [31:0] Extend32;

SignExtend dut(.inst15_0(inst15_0), .Extend32(Extend32));

initial begin

#5 inst15_0=16'h00AA;

#5 inst15_0=16'hC001;


end



endmodule
