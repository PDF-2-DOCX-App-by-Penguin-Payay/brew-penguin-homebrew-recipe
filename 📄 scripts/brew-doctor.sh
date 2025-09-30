#!/usr/bin/env bash
# brew-doctor.sh
# Keep Homebrew tidy with one command

set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "⚠️ Homebrew not found. Install it first: https://brew.sh"
  exit 1
fi

echo "🧪 Running brew doctor..."
brew doctor || true

echo "⬆️ Updating and upgrading formulas..."
brew update
brew upgrade

echo "🧹 Cleaning up old packages and caches..."
brew cleanup

echo "📦 Removing unused dependencies..."
brew autoremove || true

echo "✅ Brew is healthy and up to date!"
