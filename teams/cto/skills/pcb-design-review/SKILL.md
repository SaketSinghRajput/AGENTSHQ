---
name: pcb-design-review
description: "Schematic/PCB review, BOM and DFM using KiCad CLI. Use for any board design."
---

# Pcb Design Review

- `kicad-cli sch erc`, `kicad-cli pcb drc` → attach reports.
- Checklist: decoupling per IC, power tree & current headroom (≥30%), ESD/TVS on external I/O, reverse-polarity, test points, antenna keep-out, thermal vias, creepage for mains, connector pinout sanity, mounting holes.
- BOM with LCSC/Mouser part numbers, alternates for every single-source part, cost at 100/1k qty.
- Outputs: `kicad-cli pcb export gerbers`, drill, pick-and-place, assembly drawing.
