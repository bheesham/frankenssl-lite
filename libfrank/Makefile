LDFLAGS+= -fPIC
LDLIBS+= -lbfd -ldl 

default: libfrank.so debug

libfrank.so: frank.c frank.h
	$(CC) -o $@ $(CFLAGS) $< $(LDFLAGS) -shared $(LDLIBS)

debug: debug.c libfrank.so
	$(CC) -o $@ $(CFLAGS) $< $(LDFLAGS) $(LDLIBS) -L. -lfrank

clean:
	rm libfrank.so
	rm debug

run: debug
	LD_LIBRARY_PATH=. ./debug

.PHONY: clean default run
