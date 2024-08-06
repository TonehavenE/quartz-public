/*
Purpose: Find the sum of all the primes below two million.

Author: Eben Quenneville
Date: 2023-02-10
*/
#include <assert.h>
#include <math.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

const int LIMIT = 2000000;

long problem10() {
  int crossLimit = sqrt(LIMIT);
  bool sieve[LIMIT];
  memset(sieve, false, LIMIT * sizeof(bool));
  for (int i = 4; i < LIMIT; i += 2) {
    sieve[i] = true;
  }
  for (int i = 3; i < crossLimit; i += 2) {
    if (!sieve[i]) {
      int m = i * i;
      while (m < LIMIT) {
        sieve[m] = true;
        m += 2 * i;
      }
    }
  }
  long sum = 0;
  for (int i = 2; i < LIMIT; i++) {
    if (!sieve[i]) {
      sum += i;
    }
  }

  return sum;
}

int main() {
  long solution = problem10();
  assert(solution == 142913828922);
  printf("Output: %ld\n", solution);
}
