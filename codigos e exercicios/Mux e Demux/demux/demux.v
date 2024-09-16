module demux(d,s,y);
    input d;
    input [1:0] s;
    output reg [3:0] y;

    always @(s) begin
        if(s == 2'b00) begin
            y[0] = d;
            y[1] = 0;
            y[2] = 0;
            y[3] = 0;           
        end
        else if(s == 2'b01) begin
            y[0] = 0;
            y[1] = d;
            y[2] = 0;
            y[3] = 0;   
        end
        else if(s == 2'b10) begin
            y[0] = 0;
            y[1] = 0;
            y[2] = d;
            y[3] = 0;   
        end
        else if(s == 2'b11) begin
            y[0] = 0;
            y[1] = 0;
            y[2] = 0;
            y[3] = d;   
        end
    end
endmodule