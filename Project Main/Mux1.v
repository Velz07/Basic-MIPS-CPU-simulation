module Mux1(inst20_16, inst15_11, RegDst, WriteReg);

	input [4:0] inst20_16;
	input [4:0] inst15_11;
	input RegDst;
	
	output reg [4:0] WriteReg;

	always @ (RegDst, inst20_16, inst15_11) begin
		case(RegDst) 
			0 : WriteReg <= inst20_16;
			1 : WriteReg <= inst15_11;
		endcase
	end
endmodule
