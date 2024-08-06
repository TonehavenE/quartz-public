/*
Purpose: Find the difference between the sum of the squares of the first one
hundred natural numbers and the square of the sum.

Author: Eben Quenneville
Date: 2023-02-09
*/
#include <assert.h>
#include <stdio.h>

int problem6(int high) {
  int sum = 0;
  int sumOfSquares = 0;
  for (int i = 0; i <= high; i++) {
    sum += i;
    sumOfSquares += i * i;
  }
  return ((sum * sum) - sumOfSquares);
}

int main() {
  int solution = problem6(100);
  assert(solution == 25164150);
  printf("Output: %d\n", solution);
  return 0;
}
