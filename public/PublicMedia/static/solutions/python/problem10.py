"""
Purpose: Find the sum of all the primes below two million.

Author: Eben Quenneville
Date: 2023-01-31
"""
from math import sqrt

limit = 2_000_000
crossLimit = int(sqrt(limit))


def problem10() -> int:
    sieve = [False] * limit
    for i in range(4, limit, 2):
        sieve[i] = True

    for i in range(3, crossLimit, 2):
        if not sieve[i]:
            m = i*i
            while m < limit:
                sieve[m] = True
                m += 2*i

    sum = 0
    for i in range(2, limit):
        if not sieve[i]:
            sum += i

    return sum


def main():
    solution = problem10()
    assert solution == 142913828922
    print(f"Output: {solution}")


if __name__ == "__main__":
    main()
