`timescale 1ns/1ns
`include "ex_c.v"

module ex_c_tb;

    reg p,w,m,s;
    wire a;
    alarme uut(p,w,m,s,a);

    initial begin
        $dumpfile("ex_c_tb.vcd");
        $dumpvars(0,ex_c_tb);
        p = 0; //0000
        w = 0;
        m = 0;
        s = 0; #20;

        p = 0; //0001
        w = 0;
        m = 0;
        s = 1; #20;

        p = 0; //0010
        w = 0;
        m = 1;
        s = 0; #20;

        p = 0; //0011
        w = 0;
        m = 1;
        s = 1; #20;

        p = 0; //0100
        w = 1;
        m = 0;
        s = 0; #20;

        p = 0; //0101
        w = 1;
        m = 0;
        s = 1; #20;

        p = 0; //0110
        w = 1;
        m = 1;
        s = 0; #20;

        p = 0; //0111
        w = 1;
        m = 1;
        s = 1; #20;

        p = 1; //1000
        w = 0;
        m = 0;
        s = 0; #20;

        p = 1; //1001
        w = 0;
        m = 0;
        s = 1; #20;

        p = 1; //1010
        w = 0;
        m = 1;
        s = 0; #20;

        p = 1; //1011
        w = 0;
        m = 1;
        s = 1; #20;

        p = 1; //1100
        w = 1;
        m = 0;
        s = 0; #20;

        p = 1; //1101
        w = 1;
        m = 0;
        s = 1; #20;

        p = 1; //1110
        w = 1;
        m = 1;
        s = 0; #20;

        p = 1; //1111
        w = 1;
        m = 1;
        s = 1; #20;

        $display("Teste completo");
    end
endmodule