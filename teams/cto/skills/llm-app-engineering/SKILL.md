---
name: llm-app-engineering
description: "Build LLM apps: RAG, tool-using agents, prompts, evals, guardrails; works with Claude API and Ollama. Use for any LLM feature."
---

# Llm App Engineering

- Start with an eval set (≥30 real cases) before prompt work; measure every change.
- RAG: chunking strategy, hybrid search, citations, 'I don't know' behaviour.
- Agents: least-privilege tools, human approval for side effects, max-steps, logging of every tool call.
- Provider abstraction so Claude and local Ollama models are swappable.
- Hand to ai-security-engineer for prompt-injection and data-leak tests before release.
