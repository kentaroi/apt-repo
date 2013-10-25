prefix=/usr/local
EXEC_FILE=apt-repo

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILE) $(prefix)/bin

uninstall:
	test -d $(prefix)/bin && \
		cd $(prefix)/bin && \
		rm -f $(EXEC_FILE)

