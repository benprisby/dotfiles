# dotfiles

Dotfiles for my machines, managed by [chezmoi](https://www.chezmoi.io)

## Contents

| File(s)                    | Platform | Description |
| -------------------------- | -------- | ----------- |
| `.zshrc`, `.zprofile`      | macOS    | Enhanced zsh with better history, aliases, and Homebrew integration |
| `.bashrc`, `.bash_profile` | Linux    | Bash equivalents with completion and aliases |
| `.vimrc`                   | All      | Minimal setup with cursor position memory and quality-of-life improvements |
| `.macos`                   | macOS    | Automated system preferences for keyboard, Finder, and Dock |

## Setup

```shell
brew install chezmoi
chezmoi init https://github.com/benprisby/dotfiles.git
chezmoi apply
~/.macos
```

## Notes

- Different configurations applied automatically based on machine (OS and/or hostname)
- Qt path in `.zprofile` may need adjustment if installed version differs
- macOS script tested on Sequoia 15.6.1
