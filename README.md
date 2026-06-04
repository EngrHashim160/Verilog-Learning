# Verilog Learning

My personal journey of learning Verilog and Digital Logic Design from absolute beginner to intermediate level.

This repository contains step-by-step practice exercises, starting from basic logic gates and progressing toward sequential circuits and finite state machines.

---

## Tools Used

| Tool | Purpose |
|------|---------|
| **Icarus Verilog (iverilog)** | Compiles Verilog code into a runnable simulation |
| **VVP** | Runs the compiled simulation and generates waveform data |
| **GTKWave** | Visualizes the generated `dump.vcd` waveform file |
| **VS Code** | Code editor |
| **Windows + PowerShell** | Operating system and terminal |

---

## Folder Structure

```
Verilog_Learning/
├── gates/
│   ├── and_gate/
│   ├── or_gate/
│   ├── not_gate/
│   ├── nand_gate/
│   ├── nor_gate/
│   ├── xor_gate/
│   └── xnor_gate/
├── combinational/
│   ├── half_adder/
│   └── full_adder/
├── mux/
│   ├── mux_2to1/
│   ├── mux_4to1/
│   ├── mux_2to1_always/
│   └── mux_4to1_always/
├── flipflops/
├── notes/
├── waveforms/
├── .gitignore
└── README.md
```

Each circuit folder contains:
- `design.v` — the Verilog module describing the circuit
- `testbench.v` — the test program that applies inputs and records output

---

## How to Run a Simulation

From inside any circuit folder, run these commands:

```bash
# 1. Compile the design and testbench
iverilog -o sim.out design.v testbench.v

# 2. Run the simulation (generates dump.vcd)
vvp sim.out

# 3. View the waveform
gtkwave dump.vcd
```

---

## Topics Covered

### Logic Gates
- [x] AND gate
- [x] OR gate
- [x] NOT gate
- [x] NAND gate (universal gate)
- [x] NOR gate (universal gate)
- [x] XOR gate
- [x] XNOR gate

### Combinational Circuits
- [x] Half Adder
- [x] Full Adder
- [x] 2:1 Multiplexer (assign style)
- [x] 4:1 Multiplexer (assign style)
- [x] 2:1 Multiplexer (always block style)
- [x] 4:1 Multiplexer (always block style)

### Sequential Logic
- [ ] D Flip-flop
- [ ] T Flip-flop
- [ ] JK Flip-flop
- [ ] Counters
- [ ] Finite State Machines (FSM)

---

## Verilog Operator Quick Reference

| Operator | Meaning |
|----------|---------|
| `&` | AND |
| `\|` | OR |
| `~` | NOT (invert) |
| `^` | XOR |
| `~^` or `^~` | XNOR |

---

## Author

**Hashim** — learning Verilog one circuit at a time.
