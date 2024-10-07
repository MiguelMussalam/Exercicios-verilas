`timescale 1ns/1ns
`include "meio_somador.v"

module meio_somador_tb;
    reg a,b;
    wire s,c;

    meio_somador uut(a, b, s, c);

    initial begin
        $dumpfile("meio_somador_tb.vcd");
        $dumpvars(0,meio_somador_tb);

        a = 1'b0;
        b = 1'b0; #20;
    
        a = 1'b1;
        b = 1'b0; #20;
    
        a = 1'b1;
        b = 1'b1; #20;

        $display("teste completo.");
    end
endmodule
