module t_flipflop(T, clk, Q, Qn);
    input T, clk;
    output reg Q, Qn;
    initial begin
        Q = 0;
        Qn = 1;
    end

    wire q_tmp, qn_tmp;

    jk_flipflop jkff(
        .J(T),
        .K(T),
        .clk(clk),
        .Q(q_tmp),
        .Qn(qn_tmp)
    );
    
    always @(q_tmp, qn_tmp) begin
        Q <= q_tmp;
        Qn <= qn_tmp;
    end
endmodule