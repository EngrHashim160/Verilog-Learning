# Logic Gates

This folder contains implementations of all the basic digital logic gates in Verilog.

Each gate has its own folder with a `design.v` (the circuit) and `testbench.v` (the test).

---

## Gates Implemented

| # | Gate | Folder | Verilog Operator | Description |
|---|------|--------|------------------|-------------|
| 1 | AND | [and_gate/](and_gate/) | `a & b` | Output is 1 only when ALL inputs are 1 |
| 2 | OR | [or_gate/](or_gate/) | `a \| b` | Output is 1 when ANY input is 1 |
| 3 | NOT | [not_gate/](not_gate/) | `~a` | Output is the inverse of the input |
| 4 | NAND | [nand_gate/](nand_gate/) | `~(a & b)` | NOT of AND — universal gate |
| 5 | NOR | [nor_gate/](nor_gate/) | `~(a \| b)` | NOT of OR — universal gate |
| 6 | XOR | [xor_gate/](xor_gate/) | `a ^ b` | Output is 1 when inputs DIFFER |
| 7 | XNOR | [xnor_gate/](xnor_gate/) | `~(a ^ b)` | Output is 1 when inputs are SAME |

---

## Truth Tables

### AND
| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### OR
| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

### NOT
| A | Y |
|---|---|
| 0 | 1 |
| 1 | 0 |

### NAND
| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### NOR
| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

### XOR
| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### XNOR
| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

---

## Universal Gates

**NAND** and **NOR** are called *universal gates* because any other logic gate can be built using only NAND gates (or only NOR gates). This is why chip manufacturers often build entire processors using just one type of gate.

---

## How to Run

From inside any gate folder:

```bash
iverilog -o gate.out design.v testbench.v
vvp gate.out
gtkwave dump.vcd
```
