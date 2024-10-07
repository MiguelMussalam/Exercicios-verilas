`timescale 1ns/1ns
`include "subtrator_completo.v"

module subtrator_completo_tb;
    reg a,b,cin;
    wire s,cout;

    subtrator_completo uut(a, b, cin, s, cout);

    initial begin
        $dumpfile("subtrator_completo_tb.vcd");
        $dumpvars(0,subtrator_completo_tb);

        a = 1'b0;
        b = 1'b0;
        cin = 1'b0; #20;
    
        a = 1'b1;
        b = 1'b0;
        cin = 1'b0; #20;
    
        a = 1'b1;
        b = 1'b1;
        cin = 1'b1; #20;

        $display("teste completo.");
    end
endmodule
