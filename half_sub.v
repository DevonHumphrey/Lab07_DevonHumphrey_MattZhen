module half_sub(
	input A, B,
	output Y, Borrow
);

	assign Borrow = ~A & B;
	assign Y = A ^ B;

endmodule