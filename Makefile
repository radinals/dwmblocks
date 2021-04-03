PREFIX ?= /usr/local
CC ?= cc
LDFLAGS = -lX11

output: dwmblocks.c blocks.def.h blocks.h
	${CC}  dwmblocks.c $(LDFLAGS) -o dwmblocks
blocks.h:
	cp blocks.def.h $@


clean:
	rm -f *.o *.gch dwmblocks
	rm -f -R ${PREFIX}/bin/dwmblocks-modules
install: output
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks
	cp -r dwmblocks-modules ${PREFIX}/bin
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks\
		${PREFIX}/bin/dwmblocks-modules
