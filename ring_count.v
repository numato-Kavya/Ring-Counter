module ring_count(
  input clock,
  input reset,
  output [3:0] q
  );
 
reg[3:0] a;

reg [24:0] count_reg = 0;
reg clk1 = 0;
always @(posedge clock) begin
if (reset == 1'b1) begin
count_reg <= 0;
clk1 <= 0;
end else begin
if (count_reg == 10000000) begin
count_reg <= 0;
clk1 <= ~clk1;
end else begin
count_reg <= count_reg + 1'b1;
end
end
end
always@(posedge clk1, posedge reset)
begin
if(reset==1'b1)begin 
 
     a <= 4'b0001;
  end else
  begin
    a <=  a<<1; 
    a[0] <= a[3];
  end
end

assign q = a;

endmodule
