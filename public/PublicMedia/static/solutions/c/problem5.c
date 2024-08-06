/*
Purpose: What is the smallest positive number that is evenly divisible by all of
the numbers from 1 to 20?

Author: Eben Quenneville
Date: 2023-01-26
*/
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

int problem5() {
  int divisors[10] = {7, 11, 13, 15, 16, 17, 18, 19, 20};
  bool found = false;
  int num = 2520;
  while (found == false) {
    num += 20;
    bool good = true;
    for (int i = 0; i < 9; i++) {
      if ((good == true) && (num % divisors[i] != 0)) {
        good = false;
      }
    }
    if (good == true) {
      found = true;
    }
  }
  return num;
}

int main() {
  int num = problem5();
  assert(num == 232792560);
  printf("Output: %d\n", num);
  return 0;
}
