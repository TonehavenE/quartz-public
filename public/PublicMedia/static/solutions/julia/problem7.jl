# Find the 10,001st prime number
#
# Author: Eben Quenneville
# Date: 2023-02-21
using Primes

function problem7()
    targetPrime = 10001
    candidate = 1
    primeCount = 1
    while (primeCount < targetPrime)
        candidate += 2
        if (Primes.isprime(candidate))
            primeCount += 1
        end
    end
    return candidate
end

function main()
    solution = problem7()
    @assert solution == 104743
    println("Output: ", solution)
end

main()
