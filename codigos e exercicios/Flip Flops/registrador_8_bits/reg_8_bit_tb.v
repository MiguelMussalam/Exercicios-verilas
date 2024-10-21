`timescale 1ns/1ns
`include "reg_8_bit.v"

module reg_8_bit_tb;
    reg pr,clr,clk;
    reg [7:0] d;
    wire [7:0] q, nq;

    reg_8_bit uut(d,q,nq,pr,clr,clk);

    initial begin
        $dumpfile("reg_8_bit_tb.vcd");
        $dumpvars(1);

        d = 8'b01010101; #27;
        d = 8'b10101010; #8;
        d = 8'b00000000; #35;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~ clk;
    end
endmodule