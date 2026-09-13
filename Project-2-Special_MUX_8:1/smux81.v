module smux81(a,b,c,d,e,f,g,h,sel,y);
    input a,b,c,d,e,f,g,h;
    input [2:0] sel;
    output y;
    assign y=(~sel[2]&~sel[1]&~sel[0])?a:
             (~sel[2]&~sel[1]&sel[0])?b:
             (~sel[2]&sel[1]&~sel[0])?c:
             (~sel[2]&sel[1]&sel[0])?d:
             (sel[2]&~sel[1]&~sel[0])?~e:
             (sel[2]&~sel[1]&sel[0])?~f:
             (sel[2]&sel[1]&~sel[0])?~g:~h;
endmodule

