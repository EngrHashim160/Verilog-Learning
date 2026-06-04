module testbench;
    reg a;
    reg b;
    reg s;
    wire y;

    mux_2to1 uut (
        .a(a),
        .b(b),
        .s(s),
        .y(y)
    );

    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        s=0; a=0; b=0; #10;
        s=0; a=0; b=1; #10;
        s=0; a=1; b=0; #10;
        s=0; a=1; b=1; #10;
        s=1; a=0; b=0; #10;
        s=1; a=0; b=1; #10;
        s=1; a=1; b=0; #10;
        s=1; a=1; b=1; #10;

        $finish;
    
    end

endmodule
