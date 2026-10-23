# Davis Spencer Owen — Manufacturing Engineering Portfolio

Personal portfolio site for Davis Spencer Owen, Manufacturing Project Engineer II at General Atomics Electromagnetic Systems. Built with Jekyll (Minimal Mistakes theme) and deployed on GitHub Pages.

**Live site:** https://dsovven.github.io/Davis-Spencer-Owen-Portfolio/

## Structure

- `_data/profile.yml` — single source of truth for profile info, experience, skills, and metrics
- `_data/navigation.yml` — top navigation links
- `_projects/` — project case studies (rendered at `/projects/`)
- `assets/css/main.scss` — custom styling on top of the theme
- `assets/resume.pdf` — downloadable resume
- `index.md`, `about.md`, `contact.md` — main pages

## Local preview

Requires Ruby 3.3 and Bundler. The repository's `.ruby-version` and `Gemfile`
are also used by CI so local previews match production builds.

```bash
bundle install
bundle exec jekyll serve --livereload
```

Then open `http://127.0.0.1:4000/Davis-Spencer-Owen-Portfolio/`.

## Validation

Run the same production checks used by CI:

```bash
JEKYLL_ENV=production bundle exec jekyll build --strict_front_matter --trace
ruby scripts/check_internal_links.rb _site /Davis-Spencer-Owen-Portfolio
```

## Deployment

Pushes to `main` are built and deployed automatically by `.github/workflows/jekyll-gh-pages.yml`.
Pull requests run the same production build plus an internal link and asset check without deploying.
