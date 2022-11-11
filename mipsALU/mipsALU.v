module mipsALU (alu_ctl, a, b, alu_out, zero);
input [3:0] alu_ctl;
input [7:0] a, b;
output reg [7:0] alu_out;
output zero;

assign zero = (alu_out == 0);
always @(alu_ctl, a, b) begin
	case (alu_ctl)
		8'b00000000: alu_out <= a & b;
		8'b00000001: alu_out <= a | b;
		8'b00000010: alu_out <= a + b;
		8'b00000110: alu_out <= a - b;
		8'b00000111: alu_out <= a < b ? 8'b00000001:8'b00000000;
		8'b00001100: alu_out <= ~(a | b);
		default: alu_out <= 0;
	endcase
	end
endmodule
