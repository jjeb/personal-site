# Personal site

A minimal one-page professional site built with Jekyll and deployed through GitHub Pages.

## Local setup

Requires Ruby 3.3 and Bundler.

```sh
bundle install
bundle exec jekyll serve
```

Open <http://localhost:4000/personal-site/>. The configured `baseurl` reflects the GitHub project Pages path.

## Verification

```sh
bundle exec jekyll build --trace
ruby test/site_test.rb
git diff --check
```

The smoke test reads the generated `_site/index.html`, so build the site first.

## Content boundaries

Everything rendered by this repository is public. Keep copy concise and verifiable. Do not add confidential material, private notes, client details, or claims that cannot be supported publicly. V1 intentionally contains no blog or content system beyond the homepage and 404 page.

The scheduling call to action links to Juan's confirmed 30-minute Calendly booking page.

## Deployment

Pushes to `main` trigger `.github/workflows/pages.yml`. The workflow builds the site, uploads `_site`, and deploys it to the repository's GitHub Pages environment. GitHub Pages must be configured to use **GitHub Actions** as its source in repository settings.
