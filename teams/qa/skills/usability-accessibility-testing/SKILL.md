---
name: usability-accessibility-testing
description: "Usability and accessibility testing that catches real failures: think-aloud tasks, the 5-user method, task success/error/time, and WCAG issues that actually block users. Use to judge and improve UX."
---

# Usability Accessibility Testing

**Think-aloud:** user narrates while doing a real-goal task ("send ₹500 to Mom") — highest-signal, cheapest method. **5-user rule** (Nielsen): ~5 users find ~85% of issues; run several small test→fix→retest rounds. **Metrics per task:** success rate, error rate + recovery, time-on-task, satisfaction. **WCAG failures that break real use:** touch targets <44-48px (fat-finger), low contrast (unreadable in sunlight/cheap panels), labels not tied to inputs / icon-only buttons (TalkBack + low-literacy users lost), no visible focus / keyboard trap, errors by colour only or vague ("Invalid input"), text that won't reflow at 200% zoom, missing `autocomplete`/wrong keyboard type for OTP/phone/amount, timeouts that expire without warning.


Sources: NN/g (5-user test) · Bach/Bolton Heuristic Test Strategy Model (SFDIPOT, SBTM) · Whittaker, Exploratory Software Testing (tours) · Android Developers testing · W3C WCAG 2.1 · Ministry of Testing.
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
