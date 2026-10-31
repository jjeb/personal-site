# Personal Site V1 Implementation Plan

> **REQUIRED SUB-SKILL:** Use the executing-plans skill to implement this plan task-by-task.

**Goal:** Publish a polished, accessible, single-page professional home that invites introductory conversations.

**Architecture:** Jekyll renders one Markdown page through a custom Liquid layout into static HTML. A single CSS file provides the visual system and responsive behavior; GitHub Actions builds and deploys the generated `_site` directory to GitHub Pages.

**Tech Stack:** Ruby 3.3, Bundler, Jekyll 4, Liquid, Markdown, HTML, CSS, Minitest, GitHub Actions, GitHub Pages

---

### Task 1: Establish the Jekyll build

**Files:**
- Create: `Gemfile`
- Create: `_config.yml`
- Create: `.gitignore`
- Create: `test/site_test.rb`

1. Write a Minitest smoke test requiring a generated homepage with the expected title, positioning, focus areas, and conversation link.
2. Run `ruby test/site_test.rb` and verify it fails because `_site/index.html` does not exist.
3. Add the minimal Jekyll configuration and dependencies.
4. Run `bundle install`.

### Task 2: Build the homepage

**Files:**
- Create: `_layouts/default.html`
- Create: `_includes/header.html`
- Create: `_includes/footer.html`
- Create: `index.md`
- Create: `assets/css/main.css`

1. Implement semantic page structure and concise publishable copy.
2. Add a restrained responsive visual system with visible focus states and reduced-motion support.
3. Run `bundle exec jekyll build`.
4. Run `ruby test/site_test.rb` and verify it passes.

### Task 3: Add project and deployment guidance

**Files:**
- Create: `.github/workflows/pages.yml`
- Create: `README.md`
- Create: `AGENTS.md`
- Create: `404.html`

1. Add a GitHub Pages workflow with least-required permissions.
2. Document local setup, content boundaries, verification, and deployment.
3. Document agent constraints: public content only, no unsupported claims, and no private vault material.
4. Add a minimal 404 page using the default layout.

### Task 4: Verify and publish

1. Run `bundle exec jekyll build --trace`.
2. Run `ruby test/site_test.rb`.
3. Run `git diff --check`.
4. Review all public copy for confidential or unsupported claims.
5. Commit with a Conventional Commit message.
6. Push `main` and verify the remote commit and GitHub Pages workflow state.
