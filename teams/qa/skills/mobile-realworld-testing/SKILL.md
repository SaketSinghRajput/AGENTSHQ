---
name: mobile-realworld-testing
description: "Test a real connected Android phone like a real user via adb: install, drive the UI, simulate interruptions/network loss/app-kill, capture screenshots and logs. Use for on-device testing on low-end devices and patchy networks."
---

# Mobile Realworld Testing

Target low-end Android (2-3GB RAM), patchy 2G/3G, multilingual input. Drive the phone with adb:
- `adb devices` (confirm authorised) · `adb install -r app.apk` · launch `adb shell am start -n pkg/.Activity`
- interact: `adb shell input tap X Y`, `input text "..."`, `input keyevent`, `input swipe`
- observe: `adb exec-out screencap -p > shot.png` after each step; `adb logcat` for crashes/ANRs
- simulate failures: kill mid-transaction `adb shell am kill pkg`; network loss `adb shell svc wifi disable` / `svc data disable` (airplane-like) then re-enable; low memory `adb shell am send-trim-memory pkg COMPLETE`; config change — enable "Don't keep activities" and rotate `adb shell settings put system accelerometer_rotation`.
Checklist: app survives process death + relaunch reconciles state; OTP flow survives backgrounding; upload resumes after network drop; rotation keeps form; denied permission degrades; emoji/Devanagari names render in UI, receipts and exports. Save screenshots to `qa/<app>/device/`.


Sources: NN/g (5-user test) · Bach/Bolton Heuristic Test Strategy Model (SFDIPOT, SBTM) · Whittaker, Exploratory Software Testing (tours) · Android Developers testing · W3C WCAG 2.1 · Ministry of Testing.
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
