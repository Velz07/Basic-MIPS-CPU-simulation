module tb_ALU;
	reg [3:0] ALUCtl;
	reg [31:0] A,B;
	
	wire [31:0] ALUOut;
	wire Zero;

	assign Zero = (ALUOut == 0);

ALU dut(.ALUCtl(ALUCtl),.A(A),.B(B),.ALUOut(ALUOut),.Zero(Zero));
	
initial begin

#5 ALUCtl=0;A=32'h00000001;B=32'h00000002;
#5 ALUCtl=1;A=32'h00000001;B=32'h00000002;
#5 ALUCtl=2;A=32'h00000001;B=32'h00000002;
#5 ALUCtl=6;A=32'h00000001;B=32'h00000002;
#5 ALUCtl=7;A=32'h00000001;B=32'h00000002;

end

endmodule;


