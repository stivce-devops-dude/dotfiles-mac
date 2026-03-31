# dotfiles-mac

macOS-specific dotfiles managed with [yadm](https://yadm.io/).

## CI Jobs

| CI Job | Description |
|--------|-------------|
| **Lint** — bash/zsh syntax + shellcheck | [![Lint](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/lint.yml/badge.svg)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/lint.yml) |
| **Config Validation** — verify Brewfile, SSH | [![Config Validation](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/config-validation.yml/badge.svg)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/config-validation.yml) |
| **Bootstrap** — dry-run bootstrap test | [![Bootstrap](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/bootstrap.yml/badge.svg)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/bootstrap.yml) |
| **Test macOS** — deploy & integration | [![Test macOS](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test-macos.yml/badge.svg)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/test-macos.yml) |
| **Brew Bundle** — verify packages in brew | [![Brew Bundle](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/brew-bundle.yml/badge.svg)](https://github.com/stivce-devops-dude/dotfiles-mac/actions/workflows/brew-bundle.yml) |

## Setup

```bash
yadm clone git@github.com:stivce-devops-dude/dotfiles-mac.git
yadm bootstrap
```

## What's Included

- **Package Manager**: Homebrew + Brewfile
- **Window Manager**: Aerospace
- **Terminal**: kitty
- **Apps**: Firefox, Arc, VS Code, Telegram, Signal, etc.

## Bootstrap Scripts

| Script | Description |
|--------|-------------|
| `.config/yadm/bootstrap` | Main bootstrap |
| `bootstrap.d/macos/00-system` | Xcode CLT, Rosetta 2 |
| `bootstrap.d/macos/10-brew` | Homebrew + core packages |
| `bootstrap.d/macos/30-defaults` | macOS defaults |

## Package Lists

| File | Description |
|------|-------------|
| `.Brewfile` | Homebrew packages & casks |

## Dependencies

Requires the general dotfiles repo for shared packages.
