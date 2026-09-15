module fa(a,b,c,cout,s);
    input a,b,c;
    output cout,s;
    assign s=a^b^c;
    assign cout=(a&b)|(b&c)|(c&a);
endmodule