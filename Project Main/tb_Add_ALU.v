module tb_Add_ALU;

	reg [31:0] PCout;
	reg [31:0] ShiftOut;
        wire [31:0] Add_ALUOut;

Add_ALU dut(.PCout(PCout), .ShiftOut(ShiftOut), .Add_ALUOut(Add_ALUOut));

initial begin
#5 PCout=32'h00000000;ShiftOut=32'h00000011;



end
endmodule

