---
name: web-frontend
description: "Web frontend standards: React/Next.js, TypeScript, Tailwind, accessibility, performance. Use for any web UI."
---

# Web Frontend

- TypeScript strict; components small and typed; state colocated.
- Accessibility: semantic HTML, keyboard nav, AA contrast. Test with Playwright.
- Performance budget: LCP < 2.5s on 4G, JS < 200KB initial.
- No secrets in client code; sanitize any HTML.
