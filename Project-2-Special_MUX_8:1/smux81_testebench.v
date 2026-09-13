module smux81_tb;
    reg a,b,c,d,e,f,g,h;
    reg [2:0] sel;
    wire y;
    smux81 smx(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.sel(sel),.y(y));
    initial begin
        $dumpfile("smux81_tb.vcd");
        $dumpvars(0, smux81_tb);

        $monitor("time=%0t,a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b,h=%b,sel=%b,y=%b", $time,a,b,c,d,e,f,g,h,sel,y);
        a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=0;sel=3'b000;
        #5 a=1;b=1;c=1;d=1;e=1;f=1;g=1;h=1;sel=3'b000;
        #5 sel=3'b001;
        #5 sel=3'b010;
        #5 sel=3'b011;
        #5 sel=3'b100;
        #5 sel=3'b101;
        #5 sel=3'b110;
        #5 sel=3'b111;
        #10 $finish;
    end
endmodule