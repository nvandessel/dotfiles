all: install

pure:
	mkdir -p "$HOME/.zsh"
	git clone https://github.com/sindresorhus/pure.git ~/.zsh/pure

tpm:
	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm || true

nvchad:
	git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 || true

install: nvchad tpm pure
	for d in `find . -mindepth 1 -maxdepth 1 -type d -not -path './.*'`; do \
		stow -t $(HOME) -R $$(basename $$d); \
		echo "$$(basename $$d) stowed."; \
	done
