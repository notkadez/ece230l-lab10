module jk_flipflop (J, K, clk, Q, Qn);
    input J, K, clk;
    output reg Q, Qn;

    initial begin
        Q = 0;
        Qn = 1;
    end

    wire D, q_tmp, qn_tmp;
    assign D = (J & ~Q) | (~K & Q);

    d_flipflop dff1(
        .D(D),
        .clk(clk),
        .Q(q_tmp),
        .Qn(qn_tmp)
    );

    always @(q_tmp, qn_tmp) begin
        Q <= q_tmp;
        Qn <= qn_tmp;
    end

endmodule