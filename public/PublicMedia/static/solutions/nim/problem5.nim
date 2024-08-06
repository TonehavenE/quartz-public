# Purpose:
# Author: Eben Quenneville 
# Date: 2023-01-29
type
    IntArray = array[0..8, int]

proc problem5(): int =
    var
        divisors: IntArray = [7, 11, 13, 15, 16, 17, 18, 19, 20]
        found = false
        num = 2520

    while found == false:
        num = num + 20
        var good = true
        for i in low(divisors)..high(divisors):
            if good and num mod divisors[i] != 0:
                good = false
        if good:
            found = true
    return num

proc main() =
    let num = problem5()
    assert(num == 232792560)
    echo("Output: ", num)

main()

