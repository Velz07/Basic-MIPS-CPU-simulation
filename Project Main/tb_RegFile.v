module tb_RegFile;

	reg clock;
	reg RegWrite;
	
	reg [4:0] ReadReg1, ReadReg2, WriteReg;
	reg [31:0] WriteData;
		
	wire [31:0] ReadData1, ReadData2;


RegFile dut(.clock(clock),.RegWrite(RegWrite),.ReadReg1(ReadReg1),.ReadReg2(ReadReg2),.WriteReg(WriteReg),
.ReadData1(ReadData1),.ReadData2(ReadData2),.WriteData(WriteData));

initial clock = 0;
always #5 clock = ~clock;

initial begin

#10 RegWrite=0;ReadReg1=5'b00000;ReadReg2=5'b00001;
#10 RegWrite=0;ReadReg1=5'b00001;ReadReg2=5'b00010;
#10 RegWrite=0;ReadReg1=5'b00010;ReadReg2=5'b00011;
#10 RegWrite=1;WriteReg=5'b00000;WriteData=5'b00111;
#10 RegWrite=0;ReadReg1=5'b00000;ReadReg2=5'b00001;

end

endmodule;
