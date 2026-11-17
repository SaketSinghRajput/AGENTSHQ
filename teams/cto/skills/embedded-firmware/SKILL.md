---
name: embedded-firmware
description: "Embedded firmware standards for ESP32/STM32/RP2040/Arduino with PlatformIO, FreeRTOS, drivers and comms. Use for any firmware work."
---

# Embedded Firmware

- Project: `hardware/firmware/<proj>/` PlatformIO; envs for each board + `native` for unit tests.
- Build `pio run`; test `pio test -e native`; static check `pio check`.
- Rules: no blocking in ISRs/loops, watchdog enabled, bounded buffers, no `malloc` in ISRs, explicit timeouts on I/O, versioned config struct in NVS/flash.
- Document pin map, clock tree, memory/flash budget, power states (current per state).
- Comms: MQTT with TLS, exponential back-off, offline queue. OTA: signed images + rollback.
- Never flash or erase a real device without founder confirmation.
