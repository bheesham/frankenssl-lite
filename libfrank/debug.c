#include <stdlib.h>
#include <stdio.h>
#include <bfd.h>

int main(int argc, char **argv) {
	bfd_init();

	bfd *bfd_h = bfd_fopen("libfrank.so", 0, "r", -1);

	if (bfd_h == NULL) {
		exit(1);
	}

	printf("format: %s\n", bfd_format_string(bfd_h->format));

	return 0;
}
