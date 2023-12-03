`timescale 1ns/1ps

module sim_counter;
  logic clk;
  logic reset_n;
  logic en;
  logic [3:0] cnt;

parameter STEP = 82; // 12MHz

counter counter_test(
  .clk(clk),
  .reset_n(reset_n),
  .en(en),
  .cnt(cnt)
);

always begin
  clk = 0; #(STEP/2);
  clk = 1; #(STEP/2);
end

initial begin
  $dumpfile("tb_counter.vcd");
  $dumpvars(1, sim_counter);
  reset_n = 1'b1;
  en = 1'b0;
  //#cnt = 'b0;
  #(STEP*2);
  #(STEP*2) reset_n  = 1'b0;
  #(STEP*2);
  #(STEP*2) reset_n  = 1'b1;
  #(STEP*2);
  #(STEP*2);
  #(STEP*2);
  #(STEP*2) en = 1'b1;
  #(STEP*2);
  #(STEP*2);
  #(STEP*2);
  #(STEP*2) en = 1'b0;
  #(STEP*5);
  $finish;
end

endmodule
