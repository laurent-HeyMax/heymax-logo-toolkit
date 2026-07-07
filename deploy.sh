#!/usr/bin/env bash
# Deploy the HeyMax Logo Toolkit to GitHub Pages.
# Run from inside this folder, signed in to GitHub as laurent-HeyMax.
set -e
REPO="heymax-logo-toolkit"
git init -q
git add -A
git commit -qm "HeyMax Logo Toolkit — interactive picker + brand spec"
git branch -M main
# Creates the repo AND pushes (needs GitHub CLI: https://cli.github.com)
if command -v gh >/dev/null 2>&1; then
  gh repo create "$REPO" --public --source=. --remote=origin --push
  gh api -X POST "repos/laurent-HeyMax/$REPO/pages" -f "source[branch]=main" -f "source[path]=/" 2>/dev/null || true
  echo "Live shortly at: https://laurent-heymax.github.io/$REPO/"
else
  echo "GitHub CLI not found. Create the repo at https://github.com/new (name: $REPO), then run:"
  echo "  git remote add origin https://github.com/laurent-HeyMax/$REPO.git"
  echo "  git push -u origin main"
  echo "Then enable Pages: Settings > Pages > Source: main / root."
fi
