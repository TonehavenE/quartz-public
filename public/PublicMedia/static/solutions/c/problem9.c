/*
Purpose: Find the product a * b * c where a + b + c = 1000 and a^2 + b^2 = c^2

Author: Eben Quenneville
Date: 2023-02-10
*/
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

const int GOAL = 1000;

bool isTriplet(int a, int b, int c) {
  if (a * a + b * b == c * c) {
    return true;
  }
  return false;
}

int problem9() {
  for (int a = 3; a < GOAL / 3; a++) {
    for (int b = a; b < GOAL / 2; b++) {
      int c = GOAL - a - b;
      if (isTriplet(a, b, c)) {
        if (a + b + c == GOAL) {
          return a * b * c;
        }
      }
    }
  }
  return -1;
}

int main() {
  int solution = problem9();
  assert(solution == 31875000);
  printf("Output: %d\n", solution);
  return 0;
}
