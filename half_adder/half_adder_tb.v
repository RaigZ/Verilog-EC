`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module h_adder_tb;

    reg a, b;
    wire sum, carry;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  

    half_adder DUT (.a(a), .b(b), .sum(sum), .carry(carry));
    
    initial begin
        $dumpfile("h_adder.vcd");
        $dumpvars(1, h_adder_tb);
            // values for a and b
            a = 0;
            b = 0;
            #period; // wait for period 

            a = 0;
            b = 1;
            #period;

            a = 1;
            b = 0;
            #period;

            a = 1;
            b = 1;
            #period;
        end
endmodule