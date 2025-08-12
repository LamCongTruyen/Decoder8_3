4: Chương trình testbench
module TB_encoder_8to3;

	// Inputs
	reg E;
	reg [7:0] I;

	// Outputs
	wire [2:0] Y;

	// Instantiate the Unit Under Test (UUT)
	encorder_8to3 uut (
		.E(E), 
		.I(I), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		E = 0;
		I = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
E = 1;
#100
I = 8'b00000001;
#100
I = 8'b00000010;
#100
I = 8'b00000100;
#100
I = 8'b00001000;
#100
I = 8'b00010000;
#100
I = 8'b00100000;
#100
I = 8'b01000000;
#100
I = 8'b10000000;
	end
      
endmodule

							

