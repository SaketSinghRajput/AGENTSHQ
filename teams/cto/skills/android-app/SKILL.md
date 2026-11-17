---
name: android-app
description: "Android standards: Kotlin, Jetpack Compose, MVVM, offline-first, BLE. Use for any Android work."
---

# Android App

- Kotlin + Compose + MVVM, coroutines/Flow, Room for offline, WorkManager for sync.
- Build `./gradlew assembleDebug`; tests `./gradlew test` + Compose UI tests.
- Low-end devices (2-3GB RAM) and flaky networks are the default target.
- Runtime permissions, BLE reconnection, process death handled. No API keys in APK.
