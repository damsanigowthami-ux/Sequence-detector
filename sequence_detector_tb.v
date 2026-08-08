`timescale 1ns/1ps

module sequence_detector_tb;

reg clk;
reg rst;
reg din;
wire detected;

sequence_detector uut(
    .clk(clk),
    .rst(rst),
    .din(din),
    .detected(detected)
);

always #5 clk = ~clk;

initial
begin

$dumpfile("waveform.vcd");
$dumpvars(0,sequence_detector_tb);

clk=0;
rst=1;
din=0;

#10 rst=0;

// Sequence = 1011011

din=1; #10;
din=0; #10;
din=1; #10;
din=1; #10;
din=0; #10;
din=1; #10;
din=1; #10;

#20;
$finish;

end

initial
begin
$monitor("Time=%0t din=%b detected=%b",$time,din,detected);
end

endmodule
