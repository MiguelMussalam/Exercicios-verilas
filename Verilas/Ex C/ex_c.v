module alarme(p,w,m,s,a);
    input p,w,m,s; 
    output reg a;

    always @ (p or w or m or s) begin
        a = m | (s & (p | w));
    end
endmodule