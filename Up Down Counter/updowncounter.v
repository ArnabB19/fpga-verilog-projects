module up_down_counter(clk,reset,switch,count);
    input clk, reset, switch;
    output reg [15:0] count;

    always @(posedge clk or posedge reset)
    begin
        if (reset)
            count <= 16'b0;
        else if (switch)
            count <= count + 1;
        else
            count <= count - 1;
    end
endmodule