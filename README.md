# Sequence Detector (1011) using Verilog

## Overview

This project implements a finite state machine (FSM) based sequence detector in Verilog HDL. The detector recognizes the binary sequence **1011** from a serial input stream and asserts the output for one clock cycle whenever the sequence is detected. Overlapping sequence detection is supported.

## Features

- Detects the sequence **1011**
- Overlapping sequence detection
- Synchronous FSM design
- Active-high reset
- Verilog HDL implementation
- Testbench for functional verification

## Files

- `sequence_detector.v` – Sequence detector design
- `sequence_detector_tb.v` – Testbench
- `waveform.vcd` – Simulation waveform
- `simulation/output.txt` – Console output
- `simulation/simulation.png` – Waveform screenshot

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave

## Simulation

Compile:

```bash
iverilog -o detector sequence_detector.v sequence_detector_tb.v
```

Run:

```bash
vvp detector
```

View waveform:

```bash
gtkwave waveform.vcd
```

## Expected Input

```
1011011
```

## Expected Output

```
0001001
```

The output becomes `1` whenever the sequence **1011** is detected.
