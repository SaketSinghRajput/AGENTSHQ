---
name: design-verification
description: "Chip/FPGA verification with cocotb, Verilator/Icarus, assertions, coverage and SymbiYosys formal. Use to verify any RTL."
---

# Design Verification

- Verification plan first: features → tests → coverage points.
- cocotb testbenches in `silicon/tb/<ip>/`, randomized + directed, scoreboard against a Python reference model.
- SVA assertions for protocols; SymbiYosys BMC/prove for FSMs and handshakes.
- Sign-off: all tests pass across ≥3 seeds, functional coverage ≥95% or waived with reason, zero lint errors. Attach waveform (.fst) for every bug.
- You are independent of the designer: your job is to break the design.
