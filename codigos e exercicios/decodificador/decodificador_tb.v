`timescale 1ns/1ns
`include "decodificador.v"

module decodificador_tb;

    reg [2:0] a;
    reg enable;
    wire [7:0] y;
    decodificador uut(a, enable, y);

    initial begin
        $dumpfile("decodificador_tb.vcd");
        $dumpvars(0,decodificador_tb);

        enable = 1;
        a = 3'b000; #20;
        a = 3'b001; #20;
        a = 3'b010; #20;
        a = 3'b011; #20;
        a = 3'b100; #20;
        a = 3'b101; #20;
        a = 3'b110; #20;
        a = 3'b111; #20;

        enable = 0;
        a = 3'b000; #20;
        a = 3'b001; #20;
        a = 3'b010; #20;
        a = 3'b011; #20;
        a = 3'b100; #20;
        a = 3'b101; #20;
        a = 3'b110; #20;
        a = 3'b111; #20;

        $display("teste completo.");
    end
endmodule
