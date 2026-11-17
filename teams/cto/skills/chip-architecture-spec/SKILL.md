---
name: chip-architecture-spec
description: "Write a chip/IP micro-architecture spec and register map. Use before any RTL."
---

# Chip Architecture Spec

`silicon/spec/<ip>.md`: features, block diagram, interfaces (AXI/APB/Wishbone/SPI…), clock & reset domains, CDC plan, FSMs, datapath widths, register map table (addr, name, bits, RW, reset), interrupts, performance targets (freq, throughput, area), PPA estimates, verification plan hooks, DFT intent.
