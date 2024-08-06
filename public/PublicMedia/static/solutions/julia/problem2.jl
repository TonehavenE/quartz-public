# Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
#
# Author: Eben Quenneville
# Date: 2022-11-12, modified 2023-01-28

function problem2()
    sum = 2
    first = 1
    previous = 2
    current = first + previous
    while current + previous < 4000000
        first = previous
        previous = current
        current = first + previous
        if current % 2 == 0
            sum += current
        end
    end
    return sum
end

function main()
    sum = problem2()
    @assert sum == 4613732
    println("Output: ", sum)
end

main()
