module testbench;
    reg a;
    reg b;
    wire y;

    nor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end

endmodule
