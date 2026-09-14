module up_down_counter_tb();
    reg clk, reset, switch;
    wire [15:0] count;

    up_down_counter udp(.clk(clk), .reset(reset), .switch(switch), .count(count));

    initial begin
        $dumpfile("up_down_counter_tb.vcd");
        $dumpvars(0, up_down_counter_tb);

        $monitor("time=%0t | reset=%b | switch=%b | count=%d", $time, reset, switch, count);

        clk = 0;
        reset = 1;
        switch = 0;
       
        #10;
        reset = 0;
      
        switch = 1;
        #160;
  
        switch = 0;
        #160;
      
        reset = 1;
        #10;
        reset = 0;

        $finish;
    end
    always #5 clk = ~clk;
endmodule