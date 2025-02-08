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
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp README.md LICENSE $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/fiat-calculator $(DESTDIR)$(PREFIX)/bin
	cp bin/monero-h $(DESTDIR)$(PREFIX)/bin
        if ($(UNAME_S),Linux)
	  cp bin/lsetup-monero $(DESTDIR)$(PREFIX)/bin
	  cp bin/lsetup-monero-gui $(DESTDIR)$(PREFIX)/bin
        endif
## -- BLOCK:sh --
