"""
Purpose: Find the difference between the sum of the squares of the
first one hundred natural numbers and the square of the sum.

Author: Eben Quenneville
Date: 2023-01-31
"""
high = 100
def problem6():
    sum = 0
    sumOfSquares = 0
    for i in range (1, high + 1):
        sum += i
        sumOfSquares += i*i
    return ((sum * sum) - sumOfSquares)


def main():
    difference = problem6()
    assert difference == 25164150
    print(f"Output: {difference}")

if __name__ == "__main__":
    main()