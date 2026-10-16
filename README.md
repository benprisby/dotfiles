# dotfiles

Dotfiles for my machines, managed by [chezmoi](https://www.chezmoi.io)

## Contents

| File(s)                    | Platform | Description |
| -------------------------- | -------- | ----------- |
| `.zshrc`, `.zprofile`      | macOS    | Enhanced zsh with better history, aliases, and Homebrew/pyenv/Cargo/Docker setup |
| `.bashrc`, `.bash_profile` | Linux    | Bash equivalents with completion and aliases |
| `.vimrc`                   | All      | Minimal setup with cursor position memory and quality-of-life improvements |
| `.gitconfig`               | All      | Git configuration with per-machine email |
| `.ssh/config`              | macOS    | SSH shortcuts and options (personal machines only) |
| `configure-macos.sh`       | macOS    | Automated system preferences for keyboard, Finder, and Dock |

## Setup

chezmoi supports [many installation options](https://www.chezmoi.io/install/).

### macOS

```shell
brew install chezmoi
chezmoi init --apply benprisby  # Also runs the macOS configuration script once
```

### Linux

```shell
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply benprisby  # Installs binary to ~/.local/bin
```

## Notes

- Different configurations applied automatically based on OS and hostname (see `.chezmoidata.yaml`)
- macOS script tested on Sequoia 15.6.1
