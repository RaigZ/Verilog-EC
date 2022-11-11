//mipsALU_tb.v
`timescale 1 ns/10 ps 

module mipsALU_tb;

	reg [7:0] a,b;
	reg [3:0] alu_ctl;	
	wire[7:0] alu_out;
	wire zero;
	
	mipsALU DUT (.a(a), .b(b), .alu_ctl(alu_ctl), .alu_out(alu_out), .zero(zero));
	initial begin
		 $dumpfile("mipsALU.vcd");
		 $dumpvars(1,mipsALU_tb);
		 alu_ctl = 4'b0000;
		 a = 8'b00000001;
		 b = 8'b00000011;
		 #5;	
 		 alu_ctl = 4'b0001;
		 a = 8'b00000010;
		 b = 8'b00000101;
		 #5; 
 		 alu_ctl = 4'b0010;
		 a = 8'b00100010;
		 b = 8'b00001011;
		 #5;
 		 alu_ctl = 4'b0110;
		 a = 8'b00001100;
		 b = 8'b00000011;
		 #5; 
 		 alu_ctl = 4'b0111;
		 a = 8'b00110101;
		 b = 8'b00011001;
		 #5; 
 		 alu_ctl = 4'b1100;
		 a = 8'b00000111;
		 b = 8'b00010001;
		 #5; 	 
	end
endmodule
