module amplificador(a,b,c,tv,cpu,alexa);
    input a,b,c;
    output reg tv,cpu,alexa;

    always @ (a or b or c) begin

    tv = a;
    cpu = ~a & b;
    alexa = ~a & ~b & c;
    end

endmodule