module tb_DataMemory ;

	reg clock;
	reg [6:0] address;
	reg MemWrite, MemRead;
	reg [31:0] WriteData; 
	
	wire [31:0] ReadData;

DataMemory dut(.clock(clock), .address(address), .MemWrite(MemWrite), .MemRead(MemRead), .WriteData(WriteData),.ReadData(ReadData));

initial clock=0;
always #5 clock=~clock;


initial begin

#10 MemRead=1;MemWrite=0;address=5'b00000;
#10 MemRead=1;MemWrite=0;address=5'b00001;
#10 MemRead=0;MemWrite=1;address=5'b00010;WriteData=32'h000000AA;
#10 MemRead=1;MemWrite=0;address=5'b00010;
#10 MemRead=1;MemWrite=0;address=5'b00100;

end 

endmodule;



