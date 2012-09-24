# Makefile for dotfiles


install: bash

bash:
	install -d -m 755 $(DISTDIR)/etc
	install -m 744 bash/etc_bashrc $(DISTDIR)/etc/bash.bashrc
