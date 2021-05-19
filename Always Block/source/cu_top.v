module always_block
  (
    input input_1,
    input input_2
   );
   
   // Create AND-gate
   wire and_gate;
   
   // Combinational logic
   always @ (input_1 or input_2)
   begin
     assign and_gate = input_1 & input_2;
   end
   
   // Sequential logic
   always @ (posedge i_clk)
   begin
     assign and_gate = input_1 & input_2;
   end 
   
endmodule