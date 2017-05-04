CFLAGS+= -fPIC -shared -ldl
LDFLAGS+= -lbfd

libfrank.so: frank.c frank.h
	$(CC) -o $@ $(CFLAGS) $(LDFLAGS) $<

clean:
	rm libfrank.so

.PHONY: clean
