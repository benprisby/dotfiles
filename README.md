# dotfiles

Dotfiles for my machines, managed by [chezmoi](https://www.chezmoi.io)

## Contents

| File(s)                    | Platform | Description |
| -------------------------- | -------- | ----------- |
| `.zshrc`, `.zprofile`      | macOS    | Enhanced zsh with better history, aliases, and Homebrew integration |
| `.bashrc`, `.bash_profile` | Linux    | Bash equivalents with completion and aliases |
| `.vimrc`                   | All      | Minimal setup with cursor position memory and quality-of-life improvements |
| `.gitconfig`               | All      | Git configuration with per-machine differences |
| `configure-macos.sh`       | macOS    | Automated system preferences for keyboard, Finder, and Dock |

## Setup

chezmoi supports [many installation options](https://www.chezmoi.io/install/).

### macOS

```shell
brew install chezmoi
chezmoi init https://github.com/benprisby/dotfiles.git
chezmoi apply  # Automatically runs macOS configuration script
```

### Linux

```shell
sh -c "$(curl -fsLS get.chezmoi.io/lb)"  # Installs binary to ~/.local/bin
chezmoi init https://github.com/benprisby/dotfiles.git
chezmoi apply
```

or as a one-liner:

```shell
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply benprisby
```

## Notes

- Different configurations applied automatically based on machine (OS and/or hostname)
- Qt path in `.zprofile` may need adjustment if installed version differs
- macOS script tested on Sequoia 15.6.1
