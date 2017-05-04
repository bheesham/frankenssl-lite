SRC_LIBA=$(addprefix liba/, a.c a.h)
SRC_FRANK=$(addprefix libfrank/, frank.c frank.h debug.c)
SRC_INTRO=$(addprefix intro/, main.c intro.h)

CC?=cc
export CC

CFLAGS+= -g
export CFLAGS

default: liba/liba.so libfrank/libfrank.so intro/intro

liba/liba.so: $(SRC_LIBA)
	$(MAKE) -C liba

libfrank/libfrank.so: $(SRC_FRANK)
	$(MAKE) -C libfrank

intro/intro: $(SRC_INTRO) libfrank/libfrank.so
	$(MAKE) -C intro

clean:
	$(MAKE) -C intro
	$(MAKE) -C libfrank
	$(MAKE) -C liba

.PHONY: clean default
