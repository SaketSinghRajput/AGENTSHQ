---
name: firmware-hardware-security
description: "Embedded and silicon security: secure boot, signed OTA, debug lockdown, key storage, side channels, RTL trust. Use for devices and chips."
---

# Firmware Hardware Security

- Secure boot + flash encryption (e.g. ESP32 eFuse flow), signed OTA with anti-rollback.
- Unique per-device credentials; no shared/default passwords; keys in secure element/eFuse.
- JTAG/SWD/UART disabled or locked in production.
- Input fuzzing of protocol parsers; check for buffer overflows.
- RTL: no undocumented debug backdoors, lock bits enforced in hardware, consider fault/side-channel risks for crypto blocks.
