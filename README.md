# brew-penguin-homebrew-recipe
Lightweight macOS/Linux scripts for Homebrew health, setup, and security.
# 🍺 brew-penguin

Lightweight macOS/Linux scripts for Homebrew health, setup, and basic security.

---

## 📂 Scripts

### `brew-doctor.sh`
Runs `brew doctor` and performs maintenance:
- Updates & upgrades packages
- Cleans up old formulas/caches
- Removes unused dependencies (`brew autoremove`)

### `brew-bundle-refresh.sh`
Exports all installed packages to a `Brewfile` for backup/sharing.

### `brew-quick-setup.sh`
Bootstraps a new machine from a `Brewfile`.

### `startup_check.sh`
Quick snapshot of system info + brew version + top installed leaves.

### `brew-security-check.sh`
Adds a security layer:
- Gatekeeper & SIP status
- Lists system updates
- Runs **Lynis** audit (if installed)
- Optionally scans `~/Downloads` with **ClamAV**

---

## 🚀 Quick Start
```bash
git clone https://github.com/mtmeyer4/brew-penguin.git
cd brew-penguin/scripts
chmod +x *.sh
./brew-doctor.sh
