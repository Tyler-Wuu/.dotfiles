all: clean linux
linux: 
	bash ~/.dotfiles/bin/linux.sh
clean: 
	bash ~/.dotfiles/bin/cleanup.sh
