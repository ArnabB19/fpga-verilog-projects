module fa_tb;
    reg a,b,c;
    wire cout,s;
    fa FA(.a(a), .b(b), .c(c), .cout(cout), .s(s));

    initial begin
            $dumpfile("fa_tb.vcd");
            $dumpvars(0, fa_tb);
            $monitor("time=%0t, a=%b, b=%b, c=%b, cout=%b, s=%b", $time, a, b, c, cout, s);
            a=0;b=0;c=0;
            #5 a=0;b=0;c=1;
            #5 a=0;b=1;c=0;
            #5 a=0;b=1;c=1;
            #5 a=1;b=0;c=0;
            #5 a=1;b=0;c=1;
            #5 a=1;b=1;c=0;
            #5 a=1;b=1;c=1;
            #5 $finish;

        end
endmodule
