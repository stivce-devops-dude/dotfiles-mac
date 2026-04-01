# dotfiles-mac

macOS-specific dotfiles. Managed as a bare git repo.

## Setup

```bash
git clone --bare git@github.com:stivce-devops-dude/dotfiles-mac.git ~/.dotfiles-os
git --git-dir=$HOME/.dotfiles-os --work-tree=$HOME checkout
```

Add to your shell profile:

```bash
alias dot-os='git --git-dir=$HOME/.dotfiles-os --work-tree=$HOME'
dot-os config status.showUntrackedFiles no
```

## What's included

- **Window manager** — `.config/aerospace/aerospace.toml`
- **Terminal** — `.config/kitty/kitty.conf` (macOS-specific overrides)
- **SSH** — `.ssh/config`

## Usage

```bash
dot-os add ~/.config/aerospace/aerospace.toml
dot-os commit -m "update aerospace config"
dot-os push
```

## Related repos

- [dotfiles](https://github.com/stivce-devops-dude/dotfiles) — Shared dotfiles (zsh, nvim, starship, kitty base, git)
- [os-configuration](https://github.com/stivce-devops-dude/os-configuration) — Ansible playbook for package management and system setup
