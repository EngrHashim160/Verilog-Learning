module testbench;

    reg a;
    wire y;

    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        a=0; #10;
        a=1; #10;

        $finish;
    end

endmodule