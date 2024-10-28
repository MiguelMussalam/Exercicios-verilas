`timescale 1ns/1ns
`include "conversor_serie-paralelo.v"

module conversor_serie_paralelo_tb;
    reg d,pr,clr,clk;
    wire [3:0] q;
    conversor_serie_paralelo uut(d,pr,clr,q,clk);

    initial begin
        $dumpfile("conversor_serie_paralelo_tb.vcd");
        $dumpvars(1);

        clr = 1; pr = 0; #20;
        clr = 0; #20;
        d = 1; #100;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk;
    end
endmodule