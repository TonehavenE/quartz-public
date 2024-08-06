# Purpose: Find the sum of all the primes below two millioin.
#
# Author: Eben Quenneville
# Date: 2023-02-21
using Primes

function problem10()
    limit = 2000000
    sum = 2 # we start at 3 so we only have to work with odds
    i = 3
    while i < limit
        if isprime(i)
            sum += i
        end
        i += 2
    end
    return sum
end

function main()
    solution = problem10()
    @assert solution == 142913828922
    println("Output: ", solution)
end

main()


