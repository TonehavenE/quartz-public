# Purpose: Find the sum of all the multiples of 3 or 5 below 1000.

# Author: Eben Quenneville 
# Date: 2023-01-29

proc problem1(): int =
    var sum: int = 0
    for i in 1..999:
        if i mod 3 == 0:
            sum += i
            continue
        if i mod 5 == 0:
            sum += i
    return sum

proc main() =
    let sum = problem1()
    assert(sum == 233168)
    echo("Output: ", sum)

main()