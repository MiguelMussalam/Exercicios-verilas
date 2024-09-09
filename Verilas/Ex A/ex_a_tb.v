`timescale 1ns/1ns
`include "ex_a.v"

module ex_a_tb;

    reg a, b;
    wire s1,s2;
    rua_a_b uut(a,b,s1,s2);
    //and_gate uut(A, B, S);

    initial begin
        $dumpfile("ex_a_tb.vcd");
        $dumpvars(0,ex_a_tb);

        a = 0;
        b = 0; #20;
        a = 0; 
        b = 1; #20;
        a = 1;
        b = 0; #20;
        a = 1;
        b = 1; #20;

        $display("Teste completo");
    end
endmodule