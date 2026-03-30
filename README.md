# dotfiles-mac

macOS-specific dotfiles managed with yadm.

## CI Jobs

| CI Job | Description |
|--------|-------------|
| **Lint** — bash/zsh syntax validation | [![Lint](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml/badge.svg?job=lint)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml) |
| **Validate** — Brewfile, SSH, kitty config | [![Validate](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml/badge.svg?job=validate)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml) |
| **Bootstrap** — dry-run bootstrap test | [![Bootstrap](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml/badge.svg?job=bootstrap)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml) |
| **Brew Bundle** — verify packages in brew | [![Brew Bundle](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml/badge.svg?job=brew-bundle)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml) |
| **Test macOS** — deploy & integration | [![Test macOS](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml/badge.svg?job=test-macos)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test.yml) |

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

## Dependencies

Requires the general dotfiles repo to be cloned at `~/dotfiles` for shared packages.
