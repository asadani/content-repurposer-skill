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
5. `shared/platform-styles.md`

## Step 2 — Classify topic mode + apply platform style profile

Apply `topic-modes.md`. Security → forensic. Architecture/agents → sharp technical opinion still allowed, but include trade-offs explicitly. Leadership/governance → measured, citation-heavy.

Then apply the **medium** row from `shared/platform-styles.md`: technical depth 3–4 (multiple explained code/config blocks), headline aggressiveness 5 (curiosity-gap title is encouraged here — Medium is a discovery feed), density 4 (H2 sections, dense prose). Honor the precedence rules in that file — `voice-rules.md`/`pet-peeves.md` are absolute, so the curiosity-gap lives only in the title and the body must honestly deliver on it; topic mode can raise (never lower) substance.

## Step 3 — Plan the structure

**Default outline (1500-3000 words, 7-12 min read):**

1. **Title** — headline aggressiveness 5 per `shared/platform-styles.md`: a curiosity-gap or strong-stakes title is encouraged on Medium (discovery feed). It must be honest — the body delivers on the promise, and the no-engagement-bait rule still applies (no fake CTAs, no hollow teasing). Sub-clauses welcome ("Contextual Retrieval, Honestly: A Default, Not a Strategy").
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

**Emoji:** follow the Emoji Control section in `shared/voice-rules.md`. Default level is `low` — Medium articles should rarely contain emoji. Override only if the user explicitly says so.

## Step 5 — Pre-delivery checks

1. Run the regex sweep from `shared/pet-peeves.md`. Any hit → rewrite.
2. Confirm: every claim has either a number, a citation, or an "I've seen this when..." anecdote anchor.
3. Confirm: structure has H2 sections (not just paragraphs), at least one code block (if technical), and a real closer.
4. Confirm: style profile applied — depth, headline, and density match the medium row in `shared/platform-styles.md`. The title may use a curiosity-gap, but the body honestly delivers and contains no engagement-bait.

## Step 6 — Save and deliver

**Save to file.** Derive a kebab-case topic slug. Get today's date in `YYYY-MM-DD` form. Save the full Markdown article to:

```
./drafts/<YYYY-MM-DD>-<topic-slug>/medium.md
```

If the file already exists, suffix with `-v2`, etc. Create directories as needed.

**Also print in chat** the same Markdown content (so the user can copy from chat OR read the file), in this shape:

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
- emoji level: <none | low | medium | high>
- saved to: <path>
```

User copies into Medium manually. Do not auto-publish.
