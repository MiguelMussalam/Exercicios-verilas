module rua_a_b(a,b,s1,s2);
    input a,b;
    output reg  s1,s2;

    always @(a or b) begin
        if (a == 1'b1) begin
            s1 = 1'b1;
            s2 = 1'b0;
        end
        else begin
        s1 = 1'b0;
        s2 = 1'b1;
        end
    end
endmodule