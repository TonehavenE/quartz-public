/*
Purpose: Find the largest palindrome made from the product of two 3-digit
numbers

Author: Eben Quenneville
Date: 2022-09-05, updated 2023-01-27
*/
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

int reverse(int n) {
  int reversed = 0;
  while (n > 0) {
    reversed = 10 * reversed + n % 10;
    n /= 10;
  }
  return reversed;
}

bool is_palindrome(int n) {
  if (n == reverse(n)) {
    return true;
  } else {
    return false;
  }
}

int problem4() {
  int largest = 0;
  for (int i = 100; i < 1000; i++) {
    for (int j = i; j < 1000; j++) {
      int result = i * j;
      if (is_palindrome(result) && (result > largest)) {
        largest = result;
      }
    }
  }
  return largest;
}

int main() {
  int largest = problem4();
  assert(largest == 906609);
  printf("Output: %d\n", largest);
  return 0;
}
