module tb_AndGate;
	reg Branch;
	reg Zero;
	wire AndGateOut;
	

AndGate dut(.Branch(Branch), .Zero(Zero), .AndGateOut(AndGateOut));
initial begin
#5 Branch=0;Zero=0;
#5 Branch=0;Zero=1;
#5 Branch=1;Zero=0;
#5 Branch=1;Zero=1;
end
endmodule
