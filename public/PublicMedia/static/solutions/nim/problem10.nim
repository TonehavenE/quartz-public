#[
Purpose: Find the sum of all the primes below two million.

Author: Eben Quenneville
Date: 2023-01-30
]#
from std/math import sqrt
const limit = 2_000_000
const crossLimit = int(sqrt(float(limit)))

type Sieve = array[2..limit, bool]

proc problem10(): int =
    var 
        sieve: Sieve
        sum = 0

    # Cross out all even numbers
    for i in countup(4, limit, 2):
        sieve[i] = true
    
    # Cross out all multiples of i which are not yet crossed out.
    # For example, if we find that 3 is prime, we know that all multiples of 3 
    # will not be prime (because 3 is a divisor). So we cross them out.
    for i in countup(3, crossLimit, 2):
        if not sieve[i]:
            var m = i*i
            while m < limit:
                sieve[m] = true
                m += 2*i
    
    # Find the sum of all not yet crossed out values.
    for i in 2..limit:
        if not sieve[i]:
            sum += i

    return sum

proc main() =
    let sum = problem10()
    assert(sum == 142913828922)
    echo("Output: ", sum)

main()

#[
proc isPrime(n: int): bool =
    # borrowed from problem7
    var prime = true
    let max: int = int(sqrt(float(n))) # integer approx of sqrt(n)
    # we only have to check up to ~sqrt(n) for roots
    for i in 2..max:
        if n mod i == 0:
            prime = false
    return prime

proc problem10(): int =
    var 
        sum = 5
        i = 5
    while (i < limit):
        if i.isPrime:
            sum += i
        i += 2
    return sum
]#
