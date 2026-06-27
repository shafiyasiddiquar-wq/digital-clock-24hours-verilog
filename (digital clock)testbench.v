`timescale 1ns/1ps

module tb_digital_clock;

reg clk;
reg reset;
wire [5:0] sec;
wire [5:0] min;
wire [4:0] hour;

// Use small CLK_FREQ for simulation
digital_clock #(20) uut (
    .clk(clk),
    .reset(reset),
    .sec(sec),
    .min(min),
    .hour(hour)
);


always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #20 reset = 0;

    // Run longer to see counting
    #20000;

    $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_digital_clock);
end

initial begin
    $monitor("Time=%0t | %02d:%02d:%02d", $time, hour, min, sec);
end
endmodule
