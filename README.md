# dotfiles

Home to my custom configurations. 

The provided Makefile clones the [NVChad](https://github.com/NvChad/NvChad)
Neovim config, then uses [GNU Stow](https://www.gnu.org/software/stow/) to
setup all the symlinks for the various dotfiles.

### Prerequisites

- Install stow
```
brew install stow
```
- Install tmux
```
brew install tmux
```

Optional but recommended:
- Use a [Nerd Font](https://github.com/ryanoasis/nerd-fonts)


### Installation

1. Clone the repo
```
git clone https://github.com/nvandessel/dotfiles.git ~/dotfiles/
```

2. cd into the directory and trigger the Makefile
```
cd ~/dotfiles && make
```
3. Start tmux and install tmux plugins (default prefix is Ctrl+b)
```
tmux attach
<prefix>I
```
