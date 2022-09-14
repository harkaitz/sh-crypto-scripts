DESTDIR=
PREFIX=/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	@echo 'I share/doc/sh-crypto-scripts/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-crypto-scripts
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-crypto-scripts
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/monero-setup'; cp bin/monero-setup $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/xmrig-setup'; cp bin/xmrig-setup $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
