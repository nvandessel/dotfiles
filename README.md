# dotfiles

Home to my custom configurations. 

The provided Makefile clones the [NVChad](https://github.com/NvChad/NvChad)
Neovim config, then uses [GNU Stow](https://www.gnu.org/software/stow/) to
setup all the symlinks for the various dotfiles. GNU Stow ships with Ubuntu.

### Prerequisites

<details>
  <summary>MacOS</summary>
  
- Install stow
```
brew install stow
```
- Install tmux
```
brew install tmux
```

</details>

<details>
  <summary>Windows</summary>
  
I'm setting this up using WSL2 and Ubuntu.
This means you will need to get WSL and a Linux distro setup, then essentially follow the Linux instructions.


</details>

<details>
  <summary>Linux (Ubuntu)</summary>

*From fresh?*
- Get missing packages
```
sudo apt-get upgrade
sudo apt-get install build-essential
```
- Set up zsh
```
sudo apt install zsh
chsh -s $(which zsh)
exit
```
- [Install Oh-My-Zsh](https://ohmyz.sh/#install)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- Set up nodejs and npm
```
sudo apt update
sudo apt install nodejs
sudo apt install npm
```
- Set up zip and unzip
```
sudo apt-get install zip unzip
```

*From existing setup*
- Install GNU Stow
```
sudo apt install stow
```
- Install tmux
```
sudo apt install tmux
```
- Install Make
```
sudo apt install make
```
- [Install Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#linux) (NVChad requires Neovim 0.10, so we will use the unstable repository)
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

</details>

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
