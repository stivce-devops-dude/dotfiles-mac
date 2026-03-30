#!/usr/bin/env bash
# deploy-dotfiles.sh — simulates yadm alt for CI environments
set -euo pipefail
shopt -s nullglob nocaseglob

PLATFORM="${1:?Usage: deploy-dotfiles.sh <macos>}"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

deploy() {
  local src="$1" dest="$2"
  [[ -z "$src" ]] && return 0
  [[ "$src" -ef "$dest" ]] && return 0
  if [[ -d "$HOME" ]]; then
    local real_dest
    real_dest=$(realpath -m "$dest" 2>/dev/null) || true
    if [[ -n "$real_dest" && "$real_dest" != "$HOME"* ]]; then
      echo "ERROR: Destination outside HOME: $dest" >&2
      return 1
    fi
  fi
  mkdir -p "$(dirname "$dest")"
  cp "$src" "$dest"
  echo "  deployed: $dest"
}

echo "==> Deploying dotfiles for platform: $PLATFORM"

# .config/kitty/kitty.conf
mkdir -p "$HOME/.config/kitty"
deploy "$REPO_ROOT/.config/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"

# .config/aerospace/aerospace.toml
mkdir -p "$HOME/.config/aerospace"
deploy "$REPO_ROOT/.config/aerospace/aerospace.toml" "$HOME/.config/aerospace/aerospace.toml"

# .Brewfile
deploy "$REPO_ROOT/.Brewfile" "$HOME/.Brewfile"

# .ssh/config
mkdir -p "$HOME/.ssh"
deploy "$REPO_ROOT/.ssh/config" "$HOME/.ssh/config"
chmod 600 "$HOME/.ssh/config"

echo "==> Deploy complete"
