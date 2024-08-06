"""
Purpose: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

Author: Eben Quenneville
Date: 2022-09-06, modified 2023-01-29
"""


def problem5() -> int:
    divisors = [7, 11, 13, 15, 16, 17, 18, 19, 20]
    found = False
    num = 2520
    while found == False:
        num += 20
        good = True
        for i in divisors:
            if good and num % i != 0:
                good = False
        if good:
            found = True
    return num


def main():
    solution = problem5()
    assert solution == 232792560
    print(f"Output: {solution}")


if __name__ == "__main__":
    main()
