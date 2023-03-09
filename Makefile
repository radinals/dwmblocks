PREFIX ?= ${HOME}/.local
SHARE = ${PREFIX}/share/dwmblocks
CC ?= cc
LDFLAGS = -lX11

output: dwmblocks.c blocks.def.h blocks.h
	${CC}  dwmblocks.c $(LDFLAGS) -o dwmblocks
blocks.h:
	cp blocks.def.h $@

clean:
	rm -f *.o *.gch dwmblocks
	rm -f ${SHARE}/*
	rmdir ${SHARE}
install: output
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks
	mkdir -p ${SHARE}
	cp -r dwmblocks-scripts/* ${SHARE}
	chmod -R u+rwx ${SHARE}
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks\
	rm -rf ${SHARE}
