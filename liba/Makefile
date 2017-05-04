CFLAGS+= -fPIC -shared -ldl

liba.so: a.c a.h
	$(CC) -o $@ $(CFLAGS) $<

clean:
	rm liba.so

.PHONY: clean
