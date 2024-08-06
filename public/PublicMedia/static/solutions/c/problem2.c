/*
Purpose: By considering the terms in the Fibonacci sequence whose values do not
exceed four million, find the sum of the even-valued terms.

Author: Eben Quenneville
Date: 2022-09-05, updated 2023-01-27
*/
#include <assert.h>
#include <stdio.h>

int problem2() {
  int sum = 2; // counting 2
  int first = 1;
  int previous = 2;
  int current = first + previous;
  while (current + previous < 4000000) {
    first = previous;           // 1st > 2nd
    previous = current;         // 2nd > 3rd
    current = first + previous; // e.g. 4th = 3rd + 2nd
    if (current % 2 == 0) {
      sum = sum + current;
    }
  }
  return sum;
}

int main() {
  int sum = problem2();
  assert(sum == 4613732);
  printf("Output: %d\n", sum);
  return 0;
}
