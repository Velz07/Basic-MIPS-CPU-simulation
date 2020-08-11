module tb_ShiftLeft2;

	reg [31:0] ShiftIn;
	wire [31:0] ShiftOut;
	
ShiftLeft2 dut(.ShiftIn(ShiftIn), .ShiftOut(ShiftOut));

initial begin

#5 ShiftIn=32'b00101101;
#5 ShiftIn=32'b00101111;
#5 ShiftIn=32'b10001010;

end

endmodule;
