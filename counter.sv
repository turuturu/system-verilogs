module counter
  (
   input logic clk, reset_n, en,
   output logic [3:0] cnt
   );
always_ff @(posedge clk, negedge reset_n) begin
  if (!reset_n) begin
    cnt <= 4'h0;
  end else begin
    if (en) begin
      cnt <= cnt + 4'h1;
    end
  end
end
endmodule
