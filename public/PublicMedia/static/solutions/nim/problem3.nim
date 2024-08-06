# Purpose: Find the largest prime factor of the number 600851475143
# Author: Eben Quenneville 
# Date: 2023-01-29
proc problem3(): int64 =
    var
        num: int64 = 600_851_475_143
        i: int64 = 2
    while i*i <= num:
        if num mod i == 0:
            num = num div i
        else:
            i = i + 1
    return num

proc main() =
    let num = problem3()
    assert(num == 6857)
    echo("Output: ", num)

main()