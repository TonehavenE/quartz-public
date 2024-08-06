"""
Purpose: Find the largest prime factor of the number 600851475143

Author: Eben Quenneville
Date: 2022-09-04, modified 2023-01-29
"""


def problem3() -> int:
    num = 600851475143
    i = 2
    while i * i <= num:
        if num % i == 0:
            num //= i
        else:
            i += 1
    return num


def main():
    solution = problem3()
    assert solution == 6857
    print(f"Output: {solution}")


if __name__ == "__main__":
    main()
