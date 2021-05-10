PREFIX ?= /usr/local
SHARE = /usr/local/share
CC ?= cc
LDFLAGS = -lX11

output: dwmblocks.c blocks.def.h blocks.h
	${CC}  dwmblocks.c $(LDFLAGS) -o dwmblocks
blocks.h:
	cp blocks.def.h $@

clean:
	rm -f *.o *.gch dwmblocks
	rm -rf ${SHARE}/dwmblocks-modules
install: output
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks
	mkdir -p ${SHARE}
	cp -r dwmblocks-modules ${SHARE}
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks\
	rm -rf ${SHARE}/dwmblocks-modules
