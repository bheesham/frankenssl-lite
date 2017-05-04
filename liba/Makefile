CFLAGS+= -fPIC -shared -ldl

liba1.so liba2.so liba3.so: liba.so
	cp liba.so liba1.so
	cp liba.so liba2.so
	cp liba.so liba3.so

liba.so: a.c a.h
	$(CC) -o $@ $(CFLAGS) $<

clean:
	rm liba.so liba1.so liba2.so liba3.so

.PHONY: clean
