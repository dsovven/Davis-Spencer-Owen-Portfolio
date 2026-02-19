# Manufacturing Engineer Portfolio (GitHub Pages)

This repository is a modern, customizable portfolio template for a manufacturing engineer using Jekyll on GitHub Pages.

## What is included

- A modern Jekyll theme (`minimal-mistakes`) configured for GitHub Pages.
- A clean homepage with highlights, impact metrics, and featured projects.
- A dedicated `projects` collection with three example project case studies.
- Reusable profile data in `_data/profile.yml` so you can update content in one file.
- Navigation links in `_data/navigation.yml`.
- Custom styling in `assets/css/main.scss`.

## Quick customization

1. Update site settings in `_config.yml`:
   - `url`
   - `baseurl`
   - `repository`
2. Update your profile info in `_data/profile.yml`.
3. Replace sample project files in `_projects/` with your own projects.
4. Replace teaser images in `assets/img/`.
5. Replace `assets/resume.pdf` with your current resume.

## Local preview (optional)

If Ruby and Bundler are installed:

```bash
bundle install
bundle exec jekyll serve
```

Then open `http://127.0.0.1:4000`.

## GitHub Pages deployment

- Push to the `main` branch.
- The workflow in `.github/workflows/jekyll-gh-pages.yml` builds and deploys automatically.

## Recommended next edits

- Add a short hero photo and real project images.
- Add links to publications, patents, or presentations.
- Add a downloadable one-page project summary PDF for recruiters.
