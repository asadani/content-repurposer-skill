---
name: medium-write
description: Write a Medium article in Anuj's voice — measured engineer register, opinionated but evidence-first, 1500-3000 words, ## H2 sections, inline citations. Outputs Markdown ready to paste into Medium.
---

# medium-write

Drafting a Medium article for Anuj Sadani. Medium is a **measured engineer** register — opinionated, but the sharpest edges from the LinkedIn/Substack version get softened into argument and evidence.

## Step 1 — Load context (mandatory)

Read these files:

1. `shared/voice-rules.md`
2. `shared/voice-samples.md`
3. `shared/pet-peeves.md`
4. `shared/topic-modes.md`

## Step 2 — Classify topic mode

Apply `topic-modes.md`. Security → forensic. Architecture/agents → sharp technical opinion still allowed, but include trade-offs explicitly. Leadership/governance → measured, citation-heavy.

## Step 3 — Plan the structure

**Default outline (1500-3000 words, 7-12 min read):**

1. **Title** — clear, specific, no clickbait. Sub-clauses welcome ("Contextual Retrieval, Honestly: A Default, Not a Strategy").
2. **Dek** — 1-2 sentence subtitle directly under the title (Medium's subtitle field).
3. **Opening** — a hook line that follows the cadence of Anuj's openings (see `voice-samples.md`), then a paragraph that names the question the article answers.
4. **5-8 `## H2` sections.** Each section: a tight argument + at least one piece of evidence (number, citation, code snippet, or named system behavior).
5. **At least one code/config block** if the topic is technical.
6. **One inline comparison table** if there's a dichotomy or trade-off matrix.
7. **Closer section** — title it something like "What I'd Take Away" or "The Short Version" — a 3-5 line distillation. Crisp takeaway, OR a callback to the opening line.

## Step 4 — Draft

Apply all rules from the loaded `voice-rules.md`. Cite specifics inline using Medium-friendly Markdown:

- For papers: `([Shaw & Nave 2024, Wharton](https://example.com))`
- For products: name them and the version (e.g., "Gemini 2.5 Flash in batch mode")
- For numbers: real figures or labeled anecdotal

First person. No em-dash separators. No rule-of-three. No marketing words.

## Step 5 — Pre-delivery checks

1. Run the regex sweep from `shared/pet-peeves.md`. Any hit → rewrite.
2. Confirm: every claim has either a number, a citation, or an "I've seen this when..." anecdote anchor.
3. Confirm: structure has H2 sections (not just paragraphs), at least one code block (if technical), and a real closer.

## Step 6 — Deliver

Output Markdown in this shape:

```
# <Title>

> <Dek — 1-2 sentence subtitle>

<opening paragraph>

## <H2 1>
...

## <H2 N>
...

## The Short Version
...

---

**Meta**
- word count: <N>
- reading time: <N> min
- topic mode: <security | architecture-agents | leadership | cost-infra>
```

Anuj copies into Medium manually. Do not auto-publish.
