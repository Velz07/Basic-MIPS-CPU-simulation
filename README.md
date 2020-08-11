# Basic-MIPS-CPU-simulation
Simulation of a simple Singele Cycle 32bit-MIPS processor using ModelSim.

Credits to @DiabloBlood for providing the initial version to play around with.

https://user-images.githubusercontent.com/28178855/89865759-f1375200-dbcb-11ea-9d5b-b013c10f4358.png

We have executed the following instructions :
# Instruction Analysis
	00221820		add: R3, R1, R2
	AC010000		sw: R1, 0(R0)
	8C240000		lw R4, 0(R1)
	10210001		beq R1, R1, +8 			//Branch taken
	00001820		add R3, R0, R0		//This instruction will be skipped because of branch taken
	00411822		sub R3, R2, R1
  
# Data Memory Contents
		Mem[0] = 5;
		Mem[1] = 6;
		Mem[2] = 7;
		Mem[7] = 10;
		Mem[8] = 10;

# Instruction Memory Contents

	Mem[0]=32'h00221820;
	Mem[4]=32'hAC010000;
	Mem[8]=32'h8C240000;
	Mem[12]=32'h10210001;
	Mem[16]=32'h00001820;
	Mem[20]=32'h00411822;
		
# RegFile
		reg_mem[0] <= 12;
		reg_mem[1] <= 8;
		reg_mem[2] <= 20;
