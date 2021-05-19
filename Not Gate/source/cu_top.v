module myModule(A, B);

  input wire A;
  output wire B;
  assign B = !A;

endmodule

module myModule_tb();

  wire out; // <= Connects to B in myModule()
  reg clock;
  
  // Invert "clock" with a delay
  always begin
    #1 clock =! clock;
  end
  
  // Below is code to execute at time t=0
  initial begin
  
    // Initialize clock
    clock = 0;
    
    // End simulation after 10-time unit delay
    #10
    $finish; // <= Tells simulator to stop
  end
  
  // Create instance of muModule()
  myModule notGate(clock, out);

endmodule