/*
Purpose: Find the 10 001st prime number.

Author: Eben Quenneville
Date: 2023-02-09
*/
#include <assert.h>
#include <math.h> // sqrt
#include <stdbool.h>
#include <stdio.h>

bool isPrime(int n);

int problem7(int targetPrime) {
  int candidate = 1;
  int primeCount = 1;
  while (primeCount < targetPrime) {
    candidate += 2;
    if (isPrime(candidate)) {
      primeCount += 1;
    }
  }
  return candidate;
}

bool isPrime(int n) {
  bool prime = true;
  for (int i = 2; i < sqrt(n) + 1; i++) {
    if (n % i == 0) {
      prime = false;
      break;
    }
  }
  return prime;
}

int main() {
  int targetPrime = 10001;
  int solution = problem7(targetPrime);
  assert(solution == 104743);
  printf("Output: %d\n", solution);
  return 0;
}
