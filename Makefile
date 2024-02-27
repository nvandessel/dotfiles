all: install

nvchad:
	git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 || true

install: nvchad
	for d in `find . -mindepth 1 -maxdepth 1 -type d -not -path './.*'`; do \
		stow -R $$(basename $$d); \
		echo "$$(basename $$d) stowed."; \
	done

