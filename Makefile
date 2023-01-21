DESTDIR=
PREFIX=/usr/local
all:
clean:
install:
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/fiat-calculator  $(DESTDIR)$(PREFIX)/bin
	cp bin/monero-setup     $(DESTDIR)$(PREFIX)/bin
	cp bin/coingecko        $(DESTDIR)$(PREFIX)/bin
	cp bin/tradeogre        $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
## -- license --
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-crypto-scripts
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-crypto-scripts
## -- license --
