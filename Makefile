# Makefile for dotfiles


install: bash

bash:
	install -d -m 755 $(DESTDIR)/etc
	install -m 744 bash/etc_bashrc $(DESTDIR)/etc/bash.bashrc
