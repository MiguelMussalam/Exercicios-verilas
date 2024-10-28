`timescale 1ns/1ns
`include "contador_sincrono.v"

module contador_sincrono_tb();
    reg clr,clk;
    wire [5:0] q;
    contador_sincrono uut(q,clr,clk);

    initial begin
        $dumpfile("contador_sincrono_tb.vcd");
        $dumpvars(1);
        clr = 1; #20;
        clr = 0;
        #540;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk;
    end
endmodule