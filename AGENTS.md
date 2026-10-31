# Agent guidance

## Scope

Maintain a minimal, accessible Jekyll personal site. Prefer small changes and existing HTML, Liquid, Markdown, and CSS. Do not add blog posts, JavaScript frameworks, analytics, forms, dependencies, or speculative features without an explicit request.

## Public-content constraints

- Treat every committed content file as public.
- Use only facts supplied for publication in this repository or the active task.
- Do not inspect, quote, summarize, or copy private Obsidian vaults or other private notes.
- Do not publish confidential details, client identities, private contact information, or unsupported professional claims.
- Keep unresolved external links clearly identified as placeholders.

## Required checks

Run these before proposing completion:

```sh
bundle exec jekyll build --trace
ruby test/site_test.rb
git diff --check
```

Review the rendered public copy as part of every content change.
