module tb_Mux3 ;

	reg [31:0] ReadData, ALUOut;
	reg MemtoReg;	
	
	wire [31:0] WriteData_Reg;

Mux3 dut(.ReadData(ReadData), .ALUOut(ALUOut), .MemtoReg(MemtoReg), .WriteData_Reg(WriteData_Reg));

initial begin
#5 MemtoReg=0;ReadData=32'h000000AA;ALUOut=32'h000000BB;
#5 MemtoReg=1;ReadData=32'h000000AA;ALUOut=32'h000000BB;


end
	

endmodule
