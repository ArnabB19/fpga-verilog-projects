module logicgates(a,b,e,f,g,h,i,j,k);
    input a,b;
    output e,f,g,h,i,j,k;
    assign e=a|b;
    assign f=a&b;
    assign g=~a;
    assign h=~(a|b);
    assign i=~(a&b);
    assign j=a&~b|~a&b;
    assign k=~(a&~b|~a&b);
endmodule
