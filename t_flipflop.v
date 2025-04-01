module t_flipflop(T, clk, Q, Qn);
    input T, clk;
    output reg Q, Qn;
    initial begin
        Q = 0;
        Qn = 1;
    end
    always @(posedge clk) begin
        if (T) begin
            Q <= ~Q;
            Qn <= ~Qn;
        end
    end
endmodule