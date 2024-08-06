/*
Purpose: Find the largest prime factor of the number 600851475143

Author: Eben Quenneville
Date: 2022-09-05, updated 2023-01-27
*/

#include <assert.h>
#include <stdio.h>

long problem3() {
  long num = 600851475143;
  int i = 2;
  while (i * i <= num) {
    if (num % i == 0) {
      num /= i;
    } else {
      i += 1;
    }
  }
  return num;
}

int main() {
  long num = problem3();
  assert(num == 6857);
  printf("Output: %ld\n", num);
  return 0;
}
