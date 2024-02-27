all: install

nvchad:
	git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 || true

install: nvchad
	stow .
