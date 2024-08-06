# Purpose: Find the largest palindrome made from the product of two 3-digit numbers
#
# Author: Eben Quenneville
# Date: 2022-11-12, modified 2023-01-28

function is_palindrome(n)
    if n == parse(Int64, reverse(string(n)))
        return true
    else
        return false
    end
end

function problem4()
    largest = 0
    for i = 100:999
        for j = i:999
            result = i * j
            if (is_palindrome(result)) && (result > largest)
                largest = result
            end
        end
    end
    return largest
end

function main()
    largest = problem4()
    @assert largest == 906609
    println("Output: ", largest)
end

main()
