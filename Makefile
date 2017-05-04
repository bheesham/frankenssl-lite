SRC_LIBA=$(addprefix liba/, a.c a.h)
SRC_FRANK=$(addprefix libfrank/, frank.c frank.h debug.c)
SRC_INTRO=$(addprefix intro/, main.c intro.h)

LIB_LIBA=$(addsuffix .so, $(addprefix liba/, liba1 liba2 liba3))

CC?=cc
export CC

CFLAGS+= -g
export CFLAGS

default: $(LIBA_LIBA) libfrank/libfrank.so intro/intro

$(LIBA_LIBA): $(SRC_LIBA)
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
