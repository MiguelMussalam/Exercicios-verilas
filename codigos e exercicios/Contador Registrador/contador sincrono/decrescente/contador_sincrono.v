module contador_sincrono(q,clr,clk);
    input clr,clk;
    output reg [5:0] q;
    always@ (negedge clk) begin
        q = q - 1'b1;
        if(q == 9 | clr == 1'b1)
            q = 35;
    end
endmodule