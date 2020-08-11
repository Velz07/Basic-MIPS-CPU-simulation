module InstMem(clock, address, inst);

	input clock;
	input [31:0] address;
	
	output reg [31:0]	inst;
	
	reg [31:0] Mem [0:127];
	
	initial begin
			
	Mem[0]=32'h00221820;
	Mem[4]=32'hAC010000;
	Mem[8]=32'h8C240000;
	Mem[12]=32'h10210001;
	Mem[16]=32'h00001820;
	Mem[20]=32'h00411822;

	end
	
	always @( posedge clock) begin
		inst <= Mem[address];
	end
endmodule;
