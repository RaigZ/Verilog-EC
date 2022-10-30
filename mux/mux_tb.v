// mux_tb.v 
// Behaviorial Verilog implementation
`timescale 1 ns/1 ps

module mux_tb;

    reg [31:0] in1, in2, in3, in4; 
    reg [1:0] sel;
    wire [31:0] out;

    // instantiate module 
    Mult4to1 DUT (.in1(in1), .in2(in2), .in3(in3), .in4(in4), .sel(sel), .out(out));
	
    initial begin
	$dumpfile("mux.vcd");
        $dumpvars(1, mux_tb);
	    in1 = 32'b00000000000000000000000000000001;
	    in2 = 32'b00000000000000000000000000000010;
	    in3 = 32'b00000000000000000000000000000011;
	    in4 = 32'b00000000000000000000000000000100;

            sel = 2'b00; 
            #2; 
            sel = 2'b01;
            #2;
            sel = 2'b10;
            #2;
            sel = 2'b11;
            #2;
    end
endmodule
    
