module logicgates_tb;
    reg a,b;
    wire e,f,g,h,i,j,k;
    logicgates lg(.a(a),.b(b),.e(e),.f(f),.g(g),.h(h),.i(i),.j(j),.k(k));
    initial begin
        $dumpfile("logicgates_tb.vcd");
        $dumpvars(0, logicgates_tb);
        $monitor("time=%0t,a=%b,b=%b,e=%b,f=%b,g=%b,h=%b,i=%b,j=%b,k=%b", $time,a,b,e,f,g,h,i,j,k);
        a=0;b=0;
        #5 a=0;b=1;
        #5 a=1;b=0;
        #5 a=1;b=1;
        #10 $finish;
    end
endmodule    