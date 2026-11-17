---
name: asic-physical-flow
description: "Open-source RTL-to-GDSII with OpenLane 2/OpenROAD on Sky130/GF180, STA and DFT basics. Use for physical implementation."
---

# Asic Physical Flow

- Config in `silicon/pnr/<ip>/config.json`; run `openlane config.json` (inside WSL/Docker).
- Check: DRC clean (Magic/KLayout), LVS clean, antenna, STA setup/hold met at all corners, IR drop, utilization 40-60%.
- DFT: scan insertion plan, reset/clock controllability, test-mode pins.
- Report PPA: area, max freq, power estimate. Keep reports in `silicon/pnr/<ip>/reports/`.
