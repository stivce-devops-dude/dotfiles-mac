# dotfiles-mac

[![Test macOS](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml)

macOS-specific dotfiles managed with yadm.

## Setup

```bash
yadm clone git@github.com:stivce-devops-dude/dotfiles-mac.git
yadm bootstrap
```

## What's Included

- Xcode Command Line Tools
- Homebrew + core packages
- macOS defaults
- SSH config
- Kitty config
- Aerospace (window manager)

## Bootstrap Scripts

| Script | Description |
|--------|-------------|
| `.config/yadm/bootstrap` | Main bootstrap - runs common then macOS-specific steps |
| `.config/yadm/bootstrap.d/macos/00-system` | Xcode CLT, Rosetta 2, macOS updates (skipped in CI) |
| `.config/yadm/bootstrap.d/macos/10-brew` | Installs Homebrew, core packages from `packages/core.txt`, Brewfile |
| `.config/yadm/bootstrap.d/macos/30-defaults` | macOS defaults (Dock, menu bar, app configurations) |

## CI Tests

- **Lint**: bash/zsh syntax on all shell scripts
- **Validate**: Brewfile syntax, SSH config, kitty config
- **Brew Bundle**: Tests packages/casks/taps exist in brew
- **Deploy**: Tests config deployment on macOS
- **Integration**: zsh config loading, starship

## Dependencies

Requires the general dotfiles repo to be cloned at `~/dotfiles` for shared packages.
