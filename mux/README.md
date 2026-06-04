# Multiplexers (MUX)

A multiplexer is a digital selector switch — it takes multiple inputs and routes one of them to a single output, based on select lines.

This folder contains MUX implementations in **two coding styles**:
- **`assign` style** — pure boolean equations
- **`always` block style** — using `if-else` and `case` statements

Both styles produce identical hardware but show different ways to describe the same circuit.

---

## Circuits in This Folder

| Circuit | Folder | Style | Description |
|---------|--------|-------|-------------|
| 2:1 MUX | [mux_2to1/](mux_2to1/) | `assign` | Selects between 2 inputs using 1 select line |
| 4:1 MUX | [mux_4to1/](mux_4to1/) | `assign` | Selects between 4 inputs using 2 select lines |
| 2:1 MUX (always) | [mux_2to1_always/](mux_2to1_always/) | `always` + `if-else` | Same as 2:1 MUX but using procedural style |
| 4:1 MUX (always) | [mux_4to1_always/](mux_4to1_always/) | `always` + `case` | Same as 4:1 MUX but using case statement |

---

## 2:1 MUX Truth Table

| s | y |
|---|---|
| 0 | a |
| 1 | b |

Boolean expression: `y = (a & ~s) | (b & s)`

---

## 4:1 MUX Truth Table

| s1 | s0 | y |
|----|----|---|
| 0  | 0  | i0 |
| 0  | 1  | i1 |
| 1  | 0  | i2 |
| 1  | 1  | i3 |

The 2-bit select value acts as the **index** of the chosen input.

---

## Style Comparison — 4:1 MUX

### Assign Style
```verilog
assign y = (~s[1] & ~s[0] & i0)
         | (~s[1] &  s[0] & i1)
         | ( s[1] & ~s[0] & i2)
         | ( s[1] &  s[0] & i3);
```

### Always Block Style
```verilog
always @(*) begin
    case (s)
        2'b00: y = i0;
        2'b01: y = i1;
        2'b10: y = i2;
        2'b11: y = i3;
    endcase
end
```

Same hardware, much more readable in the `always` version. This is why `always` blocks are preferred for circuits with many conditions.

---

## Key Concepts Practiced

- **Vectors / Buses** — using `[1:0] s` to group bits together
- **Number literals** — `2'b00`, `2'b01` for multi-bit values
- **`always @(*)`** — combinational always block
- **`case` statement** — clean way to express multi-way selection
- **`reg` vs `wire`** — outputs driven inside `always` must be `reg`
