module contador_sincrono(q,clr,clk);
    input clr,clk;
    output reg [3:0] q;
    always@ (posedge clk) begin
        if(clr == 1'b1)
            q = 4'b0000;

        q = q + 1'b1;
    end
endmodule