# Purpose: Find the largest prime factor of the number 600851475143
#
# Author: Eben Quenneville
# Date: 2022-11-12, modified 2023-01-28

function problem3()
    num = 600851475143
    i = 2
    while i * i <= num 
        if num % i == 0
            num /= i
        else
            i += 1
        end
    end
    return num
end

function main()
    num = problem3()
    @assert num == 6857
    println("Output: ", num)
end

main()
