`timescale 1ns/1ns
`include "codificador.v"

module codificador_tb;

    reg [3:0] bcd;
    wire [7:0] y;
    codificador uut(bcd,y);

    initial begin
        $dumpfile("codificador_tb.vcd");
        $dumpvars(0,codificador_tb);

        bcd = 4'b0000; #20; bcd = 4'b0001; #20;
        bcd = 4'b0010; #20; bcd = 4'b0011; #20;
        bcd = 4'b0100; #20; bcd = 4'b0101; #20;
        bcd = 4'b0110; #20; bcd = 4'b0111; #20;
        bcd = 4'b1000; #20; bcd = 4'b1001; #20;
        bcd = 4'b1010; #20; bcd = 4'b1011; #20;
        bcd = 4'b1100; #20; bcd = 4'b1101; #20;
        bcd = 4'b1110; #20; bcd = 4'b1111; #20;

        $display("teste completo.");
    end
endmodule
