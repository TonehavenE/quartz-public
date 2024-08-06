# Purpose: Find the sum of all the multiples of 3 or 5 below 1000.
#
# Author: Eben Quenneville
# Date: 2022-11-12, modified 2023-01-28

function problem1()
    sum = 0
    for i = 1:999
        if i % 3 == 0
            sum += i
            continue
        end
        if i % 5 == 0
            sum += i
        end
    end
    return sum
end

function main()
    sum = problem1()
    @assert sum == 233168
    println("Output: ", sum)
end
main()
