module morse (
    in, out, reset, clk
);
    input in, reset, clk;
    output reg [7:0] out;

    parameter IDLE = 5'bxxxxx, E = 5'b00000, A = 5'b00001, T = 5'b00010, I = 5'b00100, U = 5'B00101, S = 5'b00110, R = 5'b00111, W = 5'b01000, L = 5'b10001, P = 5'b10010, J = 5'b10011;
    reg [5:0] state, next_state;

    // Lógica Sequencial    
    always @(posedge clk) begin
        if (reset)
            state = IDLE;
        else
            state = next_state;        
    end
    
    // Lógica Combinacional de entrada
    always @(*) begin
        case (state)   // 1 -> ponto 0 -> traço
            IDLE: begin
                if (in)
                    next_state = E; // .
                else
                    next_state = T; // -
            end
            E: begin
                if (in)
                    next_state = I; // ..
                else
                    next_state = A; // .-
            end           
            A: begin
                if (in)
                    next_state = R; // .-.
                else
                    next_state = W; // .--
            end
            I: begin
                if (in)
                    next_state = S; // ...
                else
                    next_state = U; // ..-
            end
            R: begin
                if (in)
                    next_state = IDLE; // FIM
                else
                    next_state = L; // .-..
            end
            W: begin
                if (in)
                    next_state = P; // .--.
                else
                    next_state = J; // .---
            end
            default: next_state = IDLE;
        endcase
    end

    // Lógica Combinacional de saída
    always @(*) begin
        case (state)
            IDLE: out = 8'h00;
            E: out = 8'h45;
            T: out = 8'h54;
            A: out = 8'h42;
            I: out = 8'h49;
            R: out = 8'h52;
            W: out = 8'h57;
            U: out = 8'h55;
            S: out = 8'h53;
            L: out = 8'h4C;
            P: out = 8'h50;
            J: out = 8'h4A;
            default: next_state = IDLE;
        endcase
    end
endmodule