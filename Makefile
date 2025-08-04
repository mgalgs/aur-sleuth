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
	ln -sf $(DESTDIR)$(PREFIX)/bin/aur-sleuth $(DESTDIR)$(PREFIX)/bin/aur-sleuth-makepkg-wrapper
	install -m 644 README.md $(DESTDIR)$(PREFIX)/share/doc/aur-sleuth/README.md

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/aur-sleuth
	rm -f $(DESTDIR)$(PREFIX)/bin/aur-sleuth-makepkg-wrapper
	rm -rf $(DESTDIR)$(PREFIX)/share/doc/aur-sleuth

test:
	@for audit in PKGBUILD changelog hardcore agentic; do \
		echo "RUNNING AUDIT $$audit"; \
		./aur-sleuth --audit=$$audit google-chrome-stable; \
	done

.PHONY: install uninstall test
