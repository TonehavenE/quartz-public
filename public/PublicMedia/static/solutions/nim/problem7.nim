#[
Purpose: Find the 10 001st prime number

Author: Eben Quenneville
Date: 2023-01-30
]#
from std/math import sqrt

proc isPrime(n: int): bool =
    var prime = true
    let max: int = int(sqrt(float(n))) # integer approx of sqrt(n)
    # we only have to check up to ~sqrt(n) for roots
    for i in 2..max:
        if n mod i == 0:
            prime = false
    return prime

proc problem7(): int =
    const TARGET_PRIME = 10001
    var 
        primeCount = 1 # 2 is prime, the rest will be odd
        candidate = 1
    while primeCount < TARGET_PRIME:
        candidate += 2
        if isPrime(candidate):
            primeCount += 1
    # ends when primeCount == 10001
    return candidate


proc main() =
    let prime = problem7()
    assert(prime == 104743)
    echo("Output: ", prime)

main()
