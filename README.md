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

Requires Ruby and Bundler:

```bash
bundle install
bundle exec jekyll serve
```

Then open `http://127.0.0.1:4000/Davis-Spencer-Owen-Portfolio/`.

## Deployment

Pushes to `main` are built and deployed automatically by `.github/workflows/jekyll-gh-pages.yml`.
