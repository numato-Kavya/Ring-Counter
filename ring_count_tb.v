//module ring_count_tb();
//	// Inputs
//	reg clock1;
//	reg reset1;
//	// Outputs
//  wire[3:0] q1;
//	// Instantiate the Unit Under Test (UUT)
//	ring_count uut (
//      .clock(clock1), 
//      .reset(reset1), 
//      .q(q1)
//	);
// 
//  always #10 clock1 = ~clock1;
// 
//	initial begin
//		// Initialize Inputs
//    clock1 = 0;  
//	reset1 = 0;
// 
//	#5 reset1 = 1;
//	#20 reset1 = 0; 
//	#500 $finish;
//    end   
//endmodule
