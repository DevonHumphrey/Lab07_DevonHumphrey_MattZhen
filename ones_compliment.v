module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0]Y
);

    wire [3:0] APlusB;
    wire [2:0] carry;
    wire around;
    wire [2:0] second_carry;

    full_adder first_inter(
        .A(A[0]),
        .B(B[0]),
        .Y(APlusB[0]),
        .Cin(1'b0),
        .Cout(carry[0])
    );

    full_adder second_inter(
        .A(A[1]),
        .B(B[1]),
        .Y(APlusB[1]),
        .Cin(carry[0]),
        .Cout(carry[1])
    );

    full_adder third_inter(
        .A(A[2]),
        .B(B[2]),
        .Y(APlusB[2]),
        .Cin(carry[1]),
        .Cout(carry[2])
    );

    full_adder fourth_inter(
        .A(A[3]),
        .B(B[3]),
        .Y(APlusB[3]),
        .Cin(carry[2]),
        .Cout(around)
    );

    full_adder lsb(
        .A(APlusB[0]),
        .B(1'b0),
        .Y(Y[0]),
        .Cin(around),
        .Cout(second_carry[0])
    );

    full_adder second_bit(
        .A(APlusB[1]),
        .B(1'b0),
        .Y(Y[1]),
        .Cin(second_carry[0]),
        .Cout(second_carry[1])
    );

    full_adder third_bit(
        .A(APlusB[2]),
        .B(1'b0),
        .Y(Y[2]),
        .Cin(second_carry[1]),
        .Cout(second_carry[2])
    );

    full_adder msb(
        .A(APlusB[3]),
        .B(1'b0),
        .Y(Y[3]),
        .Cin(second_carry[2])
    );

endmodule
