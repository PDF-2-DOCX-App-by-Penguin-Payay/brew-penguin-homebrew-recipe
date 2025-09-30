#!/usr/bin/env bash
# brew-all.sh
# Run all brew-penguin scripts in sequence

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

run_step() {
  local script="$1"
  if [[ -x "$SCRIPT_DIR/$script" ]]; then
    echo "▶️ Running $script..."
    "$SCRIPT_DIR/$script"
    echo ""
  else
    echo "⚠️ Skipping $script (not found or not executable)"
  fi
}

echo "🐧🍺 Starting brew-all.sh: full brew penguin maintenance"

run_step "brew-doctor.sh"
run_step "brew-bundle-refresh.sh"
run_step "brew-quick-setup.sh"
run_step "startup_check.sh"
run_step "brew-security-check.sh"

echo "✅ All brew-penguin scripts completed"

chmod +x scripts/brew-all.sh
./scripts/brew-all.sh
