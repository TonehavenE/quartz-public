# Purpose: Find the difference between the sum of
# the squares of the first hundred natural numbers
# and the square of the sum
#
# Author: Eben Quenneville
# Date: 2023-02-21

function problem6()
    high = 100
    numArr = 1:high
    mySum = sum(numArr)
    square(n) = n * n
    sumSquares = sum(square.(numArr))
    return ((mySum * mySum) - sumSquares)
end
function main()
    solution = problem6()
    @assert solution == 25164150
    println("Output: ", solution)
end

main()
