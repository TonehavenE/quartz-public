"""
Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
find the sum of the even-valued terms.

Author: Eben Quenneville
Date: 2022-09-03, modified 2023-01-29
"""


def problem2() -> int:
    sum = 2
    first = 1
    previous = 2
    current = first + previous
    while current + previous < 4000000:
        first = previous
        previous = current
        current = first + previous
        if current % 2 == 0:
            sum += current
    return sum


def main():
    solution = problem2()
    assert solution == 4613732
    print(f"Output: {solution}")


if __name__ == "__main__":
    main()
