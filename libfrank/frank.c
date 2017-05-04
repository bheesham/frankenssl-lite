#include "frank.h"
#include <dlfcn.h>
#include <bfd.h>

static bfd *liba1;
static bfd *liba2;
static bfd *lib31;

void frank_init() {
	bfd_init();

	/* 1. Open libs. */
	/* 2. Read symbols in libraries. */
	/* 3. Find intersection. */
	/* 4. ??? */
	/* 5. Profit! */
}
