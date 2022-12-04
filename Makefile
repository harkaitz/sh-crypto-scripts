DESTDIR=
PREFIX=/usr/local
all:
clean:
install:
## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/fiat-calculator'; cp bin/fiat-calculator $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/monero-setup'; cp bin/monero-setup $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/coingecko' ; cp bin/coingecko   $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/tradeogre' ; cp bin/tradeogre   $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
## -- license --
install: install-license
install-license: LICENSE
	@echo 'I share/doc/sh-crypto-scripts/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-crypto-scripts
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-crypto-scripts
## -- license --
