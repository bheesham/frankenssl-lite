LDFLAGS+= -L../libfrank -lfrank

intro: main.c intro.h
	gcc -o $@ $(CFLAGS) $(LDFLAGS) $<

clean:
	rm intro

run: intro
	LD_LIBRARY_PATH=../libfrank ./intro

.PHONY: clean run
