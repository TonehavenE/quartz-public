"""
Purpose: Find the thirteen adjacent digits in the 1000-digit number that have the greatest product.
Note: the number is read in from a txt file
Author: Eben Quenneville
Date: 2023-01-31
"""
seqLength = 13

def readDigits() -> list[int]:
    f = open("../8.txt", "r")
    numString = f.read()
    digits = [int(i) for i in numString]
    return digits

def problem8() -> int:
    digits = readDigits()

    largest = 0
    for i in range(0, len(digits) - seqLength):
        product = 1
        for j in range(0, seqLength):
            product *= digits[i + j]

        if product > largest:
            largest = product

    return largest

def main():
    solution = problem8()
    assert solution == 23514624000
    print(f"Output: {solution}")


if __name__ == "__main__":
    main()
