`timescale 1ns/1ns
`include "FF_d.v"

module FF_d_tb;
    reg d,pr,clr,clk;
    wire q,nq;
    FF_d uut(d,pr,clr,q,nq,clk);

    initial begin
        $dumpfile("FF_d_tb.vcd");
        $dumpvars(1);
        pr = 1; clr = 0; #20;
        pr = 0; clr = 1; #20;
        pr = 0; clr = 0; #20;
        d = 0; pr = 1; clr = 1; #20;
        d = 1; pr = 1; clr = 1; #20;
        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk;
    end
endmodule