---
name: rtl-design
description: "Synthesizable Verilog/SystemVerilog coding standards, lint and synthesis with Yosys. Use for any RTL."
---

# Rtl Design

- One module per file, `snake_case`, `_i/_o` port suffixes, `clk_i`, `rst_ni` active-low.
- `always_ff` / `always_comb`; no latches; full case defaults; parameterize widths.
- CDC only through approved synchronizers; document every crossing.
- Lint: `verilator --lint-only -Wall`. Synth: `yosys -p "synth -top <top>; stat"` → area report.
- Every module ships with a cocotb test from design-verification-engineer before merge.
