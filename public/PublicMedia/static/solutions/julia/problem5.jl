# Purpose: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
# Author: Eben Quenneville
# Date: 2023-01-26

function problem5()
    divisors = [7, 11, 13, 15, 16, 17, 18, 19, 20]
    found = false
    num = 2520
    while !found
        num += 20
        good = true
        for i in eachindex(divisors)
            if ( good && (num % divisors[i] != 0))
                good = false
            end
        end
        if good
            found = true
        end
    end
    return num
end

function main()
    num = problem5()
    @assert num == 232792560
    println("Output: ", num)
end

main()
