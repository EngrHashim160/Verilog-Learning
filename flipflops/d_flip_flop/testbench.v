module testbench;
    reg clk;
    reg d;
    wire q;

    d_flip_flop uut (.clk(clk), .d(d), .q(q));

    // Clock generator
    initial clk = 0;
    always #5 clk = ~clk;

    // Stimulus
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 1; #10;
        d = 0; #10;

        $finish;
    
    end

endmodule