`timescale 1ns/1ns
`include "FF_JK.v"

module FF_JK_tb;
    reg j,k,pr,clr,clk;
    wire q,nq;
    FF_JK uut(j,k,pr,clr,q,nq,clk);

    initial begin
        $dumpfile("FF_JK_tb.vcd");
        $dumpvars(1);
        pr = 1; clr = 0; #20;
        pr = 1; clr = 1; j = 0; k = 0; #20;
        j = 0; k = 1; #20;
        j = 1; k = 0; #20;
        j = 1; k = 1; #20;
        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk;
    end
endmodule