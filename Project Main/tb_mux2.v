module tb_Mux2;

	reg ALUSrc;
	reg [31:0] ReadData2,Extend32;	
	
	wire [31:0] ALU_B;


Mux2 dut(.ALUSrc(ALUSrc), .ReadData2(ReadData2), .Extend32(Extend32), .ALU_B(ALU_B));

initial begin

#5 ALUSrc=0;ReadData2=32'h000000AA;Extend32=32'h000000BB;
#5 ALUSrc=1;ReadData2=32'h000000AA;Extend32=32'h000000BB;
	

end
endmodule
