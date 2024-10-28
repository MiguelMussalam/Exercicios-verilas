`timescale 1ns/1ns
`include "contador_assincrono.v"

module contador_assincrono_tb;
    reg t,clr,clk;
    wire [3:0] q;
    contador_assincrono uut(t,clr,q,clk);

    initial begin
        $dumpfile("contador_assincrono_tb.vcd");
        $dumpvars(1);
        clr = 1; #20;
        t = 1; #320;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk;
    end
endmodule