#include <stdio.h>
#include <stdlib.h>

#include "larlib.h"

int main ( int ac, char **av ) {
	int some_int = 42;
	printf("0x%016lx = address of main()\n",(long unsigned int) &main);
	printf("0x%016lx = address of some_int\n",(long unsigned int) &some_int);
	int *int_ptr;
	int_ptr = (int *) malloc(sizeof(int));
	*int_ptr = daadmduuea();
	printf("0x%016lx = content of int_ptr\n",(long unsigned int) int_ptr);
	
	printf("Press a key to continue ...\n");
	char pft = (char) getchar();
	return(0);
}
