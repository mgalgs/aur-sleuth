# Makefile for aur-sleuth

# Default prefix for installation.
# For a system-wide installation (requires sudo), the default is /usr/local.
# For a user-local installation, you can override this.
# Example: make install PREFIX=$HOME/.local
PREFIX ?= /usr/local

# Default destination directory. Can be used for packaging.
DESTDIR ?= 

install:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -d $(DESTDIR)$(PREFIX)/share/doc/aur-sleuth
	install -m 755 aur-sleuth $(DESTDIR)$(PREFIX)/bin/aur-sleuth
	install -m 755 makepkg-with-sleuthing $(DESTDIR)$(PREFIX)/bin/makepkg-with-sleuthing
	install -m 644 README.md $(DESTDIR)$(PREFIX)/share/doc/aur-sleuth/README.md

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/aur-sleuth
	rm -f $(DESTDIR)$(PREFIX)/bin/makepkg-with-sleuthing
	rm -rf $(DESTDIR)$(PREFIX)/share/doc/aur-sleuth

.PHONY: install uninstall
