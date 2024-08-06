# Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms.
# Author: Eben Quenneville 
# Date: 2023-01-29

proc problem2(): int =
    var
        sum = 2
        first = 1
        previous = 2
        current = first + previous

    while current + previous < 4_000_000:
        first = previous
        previous = current
        current = first + previous
        if current mod 2 == 0:
            sum += current
    return sum

proc main() =
    let sum = problem2()
    assert(sum == 4613732)
    echo("Output: ", sum)


main()