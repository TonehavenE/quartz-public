/*
Purpose: Find the thirteen adjacent digits in the 1000-digit number that have
the greatest product. Note: the number is read in from a txt file Author: Eben
Quenneville Date: 2023-02-09
*/
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const int NUMDIGITS = 1000; // Number of digits in the file
const int SEQLENGTH = 13;   // Length of the adjacent sequence

void readDigits(int *buf) {
  // Init variables
  FILE *ptr;
  char ch;
  int i = 0;
  int dig;
  // Open the file containing the number
  ptr = fopen("../8.txt", "r");

  if (ptr == NULL) {
    printf("File could not be opened. \n");
  }

  // Read the whole file
  do {
    ch = fgetc(ptr);
    dig = ch - '0'; // convert char to integer digit
    buf[i] = dig;
    i++;
  } while (ch != EOF);
  fclose(ptr);
}

long problem8() {
  int digits[NUMDIGITS];
  readDigits(digits);

  long largest = 0;
  long product;
  for (int i = 0; i < NUMDIGITS - SEQLENGTH; i++) {
    product = 1;
    for (int j = 0; j < SEQLENGTH; j++) {
      product *= digits[i + j];
    }
    if (product > largest) {
      largest = product;
    }
  }
  return largest;
}

int main() {
  long solution = problem8();
  assert(solution == 23514624000);
  printf("Output: %ld\n", solution);
  return 0;
}
