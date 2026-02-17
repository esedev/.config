.PHONY: all install upgrade uninstall

all: upgrade

install: upgrade
	@echo "TODO: add to ~/.bashrc '. \"\$$HOME/.config/config-env\"'"

uninstall:
	rm -f $(HOME)/.local/bin/mtt-editor
	@echo "TODO: remove from ~/.bashrc '. \"\$$HOME/.config/config-env\"'"

upgrade:
	mkdir -p $(HOME)/.local/bin
	cd ../.local/bin; ln -sf ../../.config/mtt-editor.sh mtt-editor
