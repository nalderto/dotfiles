# Personal Dotfiles

## Prerequisites
* [GNU Stow](https://www.gnu.org/software/stow/)

## Installation

### Clone the repository including submodules to home directory
```bash
git clone --recurse-submodules https://github.com/nalderto/dotfiles.git ~/.dotfiles
```
### Select packages to `stow`
For example, if you want to create symbolic links for `nvim`, `tmux`, and `zsh`, use the following command

```bash
stow nvim tmux zsh
```

## Removal
To remove symbolic links for a particular package, run the following command (changing `nvim` with the package you wish to remove):

```bash
stow -D nvim
```

