module tb_Mux1;

	reg [4:0] inst20_16;
	reg [4:0] inst15_11;
	reg RegDst;
	
	wire [4:0] WriteReg;

Mux1 dut(.inst20_16(inst20_16), .inst15_11(inst15_11), .RegDst(RegDst), .WriteReg(WriteReg));

initial begin

#5 inst20_16=5'b00001;inst15_11=5'b01010;RegDst=0;
#5 inst20_16=5'b00001;inst15_11=5'b01010;RegDst=1;


end
endmodule
