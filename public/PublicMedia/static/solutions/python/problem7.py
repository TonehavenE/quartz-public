"""
Purpose: Find the 10 001st prime number.

Author: Eben Quenneville
Date: 2023-01-31
"""
from math import sqrt

TARGET_PRIME = 10001

def isPrime(n: int) -> bool:
    prime = True
    for i in range(2, int(sqrt(n)) + 1):
        if n % i == 0:
            prime = False
            break
    return prime

def problem7() -> int:
    candidate = 1
    primeCount = 1
    while primeCount < TARGET_PRIME:
        candidate += 2
        if isPrime(candidate):
            primeCount += 1

    return candidate

def main():
    solution = problem7()
    assert solution == 104743
    print(f"Output: {solution}")

if __name__ == "__main__":
    main()