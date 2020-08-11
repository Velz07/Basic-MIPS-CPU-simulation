module tb_ALUControl;


	reg [1:0] ALUOp;
	reg [5:0] FuncCode;
	wire [3:0] ALUCtl;
	

 ALUControl dut(.ALUOp(ALUOp), .FuncCode(FuncCode), .ALUCtl(ALUCtl));

initial begin
#5 ALUOp=2'b00;FuncCode=6'b000000;
#5 ALUOp=2'b01;FuncCode=6'b000000;

#5 ALUOp=2'b10;FuncCode=32;
#5 ALUOp=2'b10;FuncCode=34;
#5 ALUOp=2'b11;FuncCode=36;
#5 ALUOp=2'b11;FuncCode=37;
#5 ALUOp=2'b10;FuncCode=39;
#5 ALUOp=2'b11;FuncCode=39;


end
endmodule
