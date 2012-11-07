.PHONY: install clobber
.DEFAULT: install

install:
	./install.bash

clobber:
	rm *~
