`timescale 1ns/1ns
`include "mux.v"

module mux_tb;

    reg [3:0] d;
    reg [1:0] s;
    wire y;
    mux uut(d,s,y);

    initial begin
        $dumpfile("mux_tb.vcd");
        $dumpvars(0,mux_tb);

        d = 4'b0101;

        s = 2'b00; #20
        s = 2'b01; #20
        s = 2'b10; #20
        s = 2'b11; #20
/*
        s[0] = 0;
        s[1] = 0; #20;

        s[0] = 0; 
        s[1] = 1; #20;

        s[0] = 1;
        s[1] = 0; #20;

        s[0] = 1;
        s[1] = 1; #20;
*/
        $display("Teste completo");
    end
endmodule