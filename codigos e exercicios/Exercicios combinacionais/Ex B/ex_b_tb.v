`timescale 1ns/1ns
`include "ex_b.v"

module ex_b_tb;

    reg a, b,c;
    wire tv,cpu,alexa;
    amplificador uut(a,b,c,tv,cpu,alexa);

    initial begin
        $dumpfile("ex_b_tb.vcd");
        $dumpvars(0,ex_b_tb);
        a = 0;
        b = 0;
        c = 0; #20;
        a = 0; 
        b = 0;
        c = 1; #20;
        a = 0;
        b = 1;
        c = 0; #20;
        a = 0;
        b = 1;
        c = 1; #20;
        a = 1;
        b = 0;
        c = 0; #20;
        a = 1;
        b = 0;
        c = 1; #20;
        a = 1;
        b = 1;
        c = 0; #20;
        a = 1;
        b = 1;
        c = 1; #20;
        $display("Teste completo");
    end
endmodule