#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define TRUE 1
#define FALSE !TRUE

int prime(int number);

int
main(void) {
	int number;
	int flag = FALSE;
	printf("Que numero quieres saber si es primo?\n");
  	scanf("%d", &number);
	if (number == 1) {
		printf("%d\n", number);
	} else {
		int i = 2;
		while (i < number + 1) {
			if (prime(i) && (number % i == 0)) {
				if (!flag) {
					printf("%d ", i);
				} else {
					printf("x %d ", i);
				} 
				flag = TRUE;
				number /= i;
			} else {
				if (i == 2) {
					i++;
				} else {
					i += 2;
				}
			}
		}
	}
	printf("\n");
	return 0;
}

int
prime(int number) {
  int divisor;
  for (divisor = 2; divisor <= sqrt(number); divisor++) {
     if (number % divisor == 0) {
       // printf("%d no es primo.\n", numero);
        return FALSE;
     }
  }
  //printf("%d es primo.\n", numero);
  return TRUE;
}