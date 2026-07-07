# HeyMax Logo Toolkit

Interactive picker + machine-readable spec for choosing the right HeyMax logo across every placement.

**Live site:** `https://laurent-heymax.github.io/heymax-logo-toolkit/` (after enabling GitHub Pages — see below)

## Contents

- `index.html` — the interactive Logo Picker (self-contained; served by GitHub Pages).
- `brand-spec.json` — machine-readable placement spec for AI-agent lookup.
- `brand-spec.md` — the same spec in readable Markdown.
- `assets/` — source SVG logo files.

## Deploy to GitHub Pages

From this folder, on your machine (signed in to GitHub as `laurent-HeyMax`):

```bash
# 1. create the repo on GitHub (via gh CLI, or make it in the web UI first)
gh repo create heymax-logo-toolkit --public --source=. --remote=origin --push

# — or if the repo already exists —
git remote add origin https://github.com/laurent-HeyMax/heymax-logo-toolkit.git
git branch -M main
git push -u origin main
```

Then enable Pages: **Settings → Pages → Source: `main` / root → Save.**
The site goes live at `https://laurent-heymax.github.io/heymax-logo-toolkit/`.

## Updating

Edit the `PLACEMENTS` array in `index.html` and mirror the change in `brand-spec.json`, then commit and push.

Typeface: Plus Jakarta Sans · Previews are indicative — ship originals from the shared Drive folder.
