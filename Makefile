all: install

# Clone external dependencies
fetch-pure:
	@mkdir -p ~/.zsh
	@if [ ! -d ~/.zsh/pure ]; then \
		git clone https://github.com/sindresorhus/pure.git ~/.zsh/pure; \
		echo "Pure prompt cloned."; \
	else \
		echo "Pure prompt already exists."; \
	fi

fetch-tpm:
	@mkdir -p ~/.config/tmux/plugins
	@if [ ! -d ~/.config/tmux/plugins/tpm ]; then \
		git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm; \
		echo "TPM cloned."; \
	else \
		echo "TPM already exists."; \
	fi

# Initialize nvim with NvChad starter if not already done
init-nvim:
	@if [ ! -f nvim/.config/nvim/init.lua ]; then \
		echo "Initializing NvChad starter files..."; \
		git clone https://github.com/NvChad/starter /tmp/nvchad-starter --depth 1; \
		mkdir -p nvim/.config/nvim; \
		cp -rn /tmp/nvchad-starter/* nvim/.config/nvim/; \
		rm -rf /tmp/nvchad-starter; \
		echo "NvChad starter initialized in dotfiles."; \
		echo "NOTE: Your custom configs have been preserved."; \
	else \
		echo "NvChad already initialized in dotfiles."; \
	fi

# Stow all configurations
stow-all:
	@for d in `find . -mindepth 1 -maxdepth 1 -type d -not -path './.*'`; do \
		stow -t $(HOME) -R $$(basename $$d); \
		echo "$$(basename $$d) stowed."; \
	done

# Main install target - correct order: init files first, then stow
install: init-nvim stow-all fetch-tpm fetch-pure

# Update NvChad base files
update-nvchad:
	@echo "Updating NvChad base files..."
	@git clone https://github.com/NvChad/starter /tmp/nvchad-starter --depth 1
	@cp /tmp/nvchad-starter/init.lua nvim/.config/nvim/
	@cp /tmp/nvchad-starter/LICENSE nvim/.config/nvim/
	@cp /tmp/nvchad-starter/README.md nvim/.config/nvim/
	@cp /tmp/nvchad-starter/lua/autocmds.lua nvim/.config/nvim/lua/
	@cp /tmp/nvchad-starter/lua/configs/conform.lua nvim/.config/nvim/lua/configs/
	@cp /tmp/nvchad-starter/lua/configs/lazy.lua nvim/.config/nvim/lua/configs/
	@cp /tmp/nvchad-starter/lua/plugins/init.lua nvim/.config/nvim/lua/plugins/
	@rm -rf /tmp/nvchad-starter
	@echo "Done. Check 'git status' for any new untracked files."

# Clean target to remove existing configs for fresh install
clean:
	@echo "Removing existing configurations..."
	@rm -rf ~/.config/nvim
	@rm -rf ~/.config/tmux/plugins/tpm
	@rm -rf ~/.zsh/pure
	@echo "Clean complete. Run 'make install' to reinstall."

# Legacy target for backward compatibility
stow-only: stow-all

.PHONY: fetch-pure fetch-tpm init-nvim stow-all update-nvchad install clean stow-only stow
stow: stow-only
