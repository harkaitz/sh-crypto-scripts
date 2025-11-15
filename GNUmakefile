.POSIX:
.SUFFIXES:
.PHONY: all clean install check

PROJECT   =crypto-scripts
VERSION   =1.0.0
PREFIX    =/usr/local
BUILDDIR ?=.build
UNAME_S  ?=$(shell uname -s)
EXE      ?=$(shell uname -s | awk '/Windows/ || /MSYS/ || /CYG/ { print ".exe" }')

all:
clean:
install:
check:
## -- BLOCK:license --
install: install-license
install-license: README.md LICENSE
	install -d $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	install -c -m 644 README.md LICENSE $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/wallet-monero $(DESTDIR)$(PREFIX)/bin
       ifeq($(UNAME_S),Linux)
	install -c -m 755 bin/lsetup-crypto-monero-gui $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/lsetup-crypto-monero-daemon $(DESTDIR)$(PREFIX)/bin
       endif
## -- BLOCK:sh --
