---
name: exploratory-testing
description: "Structured exploratory testing: session-based charters, Whittaker tours, and Bach/Bolton heuristics to find bugs scripts miss. Use for creative, human-driven testing of any feature."
---

# Exploratory Testing

**Session-Based Test Management:** time-boxed (~60-90 min) charter sessions ("Explore checkout under flaky network to find duplicate-charge bugs"); log setup/test/bug/opportunity time; debrief.
**Tours (pick a lens):** landmark (key features, varied order); intellectual (hard questions/edge inputs); FedEx/data (follow one data item end-to-end); back-alley (least-used features); OCD (repeat, undo/redo, double-do — finds double-submit); saboteur/anti-social (wrong order, cancel mid-flow, bad data); rained-out (start then interrupt/cancel — maps to network loss/app kill).
**Heuristics:** SFDIPOT (Structure, Function, Data, Interfaces, Platform, Operations, Time); Goldilocks (too big/small/just right; 0/1/many/max+1); CRUD (+ delete-then-read, double-create, update-deleted); "follow the data"; "0, 1, many".
**Personas:** first-time rural user on a 2GB Android Go phone on 2G; impatient power user double-tapping; curious/malicious user; low-literacy user guessing icons.
Log every bug + issue + question with repro.


Sources: NN/g (5-user test) · Bach/Bolton Heuristic Test Strategy Model (SFDIPOT, SBTM) · Whittaker, Exploratory Software Testing (tours) · Android Developers testing · W3C WCAG 2.1 · Ministry of Testing.
> Guardrails: destructive, load and chaos testing can take systems down or corrupt data. Test ONLY Saket's own apps, on a staging/test environment, within an authorised window — never run load, stress, chaos or data-destructive tests against production or real customer data without Saket's explicit approval. Real-user/device testing uses only Saket's own device and app build. Use synthetic/test data, never real personal data; snapshot or back up before destructive runs. Report findings privately with a fix and coordinate remediation with the CTO engineering team. Have a defined abort condition and a kill switch before any chaos/load run.
