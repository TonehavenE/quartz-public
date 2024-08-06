#[
Purpose: Find the difference between the sum of the squares of the
first one hundred natural numbers and the square of the sum.

Author: Eben Quenneville
Date: 2023-01-30
]#
const range = 100
proc problem6(): int =
    var
        sum = 0
        sumOfSquares = 0
    for i in 1..range:
        sum += i
        sumOfSquares += i * i
    return ((sum * sum) - sumOfSquares)

proc main() =
    let difference = problem6()
    assert(difference == 25164150)
    echo("Output: ", difference)
    

main()