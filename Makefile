PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
DATAROOTDIR ?= $(PREFIX)/share
DATADIR ?= $(DATAROOTDIR)
MANDIR ?= $(DATADIR)/man

CFLAGS ?= -O2

PKG_CONFIG ?= pkg-config

CFLAGS_NCURSESW := `$(PKG_CONFIG) --cflags ncursesw`
LIBS_NCURSESW := `$(PKG_CONFIG) --libs ncursesw`

all: nover

nover: nover.c config.h
	$(CC) $(CFLAGS) $(CFLAGS_NCURSESW) -o $@ $< $(LDFLAGS) $(LIBS_NCURSESW)

install: nover
	rm -f $(DESTDIR)$(BINDIR)/nover
	mkdir -p $(DESTDIR)$(BINDIR)
	cp nover $(DESTDIR)$(BINDIR)/nover
	mkdir -p $(DESTDIR)$(MANDIR)/man1
	cp nover.1 $(DESTDIR)$(MANDIR)/man1/nover.1

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/nover
	rm -f $(DESTDIR)$(MANDIR)/man1/nover.1

clean:
	rm -f nover
