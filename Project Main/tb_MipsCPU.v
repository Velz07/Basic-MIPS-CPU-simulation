module tb_MipsCPU;

reg clock, reset;

initial clock=0;
always #5 clock=~clock;


MipsCPU dut(.clock(clock),.reset(reset));


initial begin

#5 reset=1;
#5 reset=0;

end

endmodule
