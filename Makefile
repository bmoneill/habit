PREFIX ?= /usr/local

TARG=habit

install:
	mkdir -p $(DESTDIR)/$(PREFIX)/bin
	cp -f $(TARG) $(DESTDIR)$(PREFIX)/bin/$(TARG)
	chmod 755 $(DESTDIR)$(PREFIX)/bin/$(TARG)

uninstall:
	rm -f $(DESTDIR)/$(PREFIX)/bin/$(TARG)

.PHONY: install uninstall
