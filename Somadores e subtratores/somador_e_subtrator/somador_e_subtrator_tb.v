`timescale 1ns/1ns
`include "somador_e_subtrator.v"

module somador_e_subtrator_tb;
    reg [7:0] a,b;
    wire [8:0] s1,s2;
    wire [6:0] c_soma,c_sub;

    somador_e_subtrator uut(a, b, s1, s2);

    initial begin
        $dumpfile("somador_e_subtrator_tb.vcd");
        $dumpvars(0,somador_e_subtrator_tb);

        a = 8'd5;
        b = 8'd5; #20;

        a = 8'd10;
        b = 8'd5; #20;

        a = 8'd15;
        b = 8'd5; #20;
        
        a = 8'd5;
        b = 8'd10; #20;

        a = 8'd5;
        b = 8'd15; #20;

        a = 8'd50;
        b = 8'd100; #20;

        a = 8'd255;
        b = 8'd255; #20;
        $display("teste completo.");
    end
endmodule
