module d_flipflop (D, clk, Q, Qn);
    input D, clk;
    output reg Q, Qn;

    initial begin
        Q = 0;
        Qn = 1;
    end

    always @(posedge clk) begin
        Q <= D;
        Qn <= ~D;
    end
    
endmodule