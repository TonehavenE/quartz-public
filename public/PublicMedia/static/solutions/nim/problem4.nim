# Purpose: Find the largest palindrome made from the product of two 3-digit numbers
# Author: Eben Quenneville 
# Date: 2023-01-29

proc reverse(n: var int): int =
    var reversed = 0
    while n > 0:
        reversed = 10 * reversed + n mod 10
        n = n div 10
    return reversed

proc isPalindrome(n: int): bool =
    # echo(n, reverse(n))
    var tempN = n
    if n == reverse(tempN):
        return true
    else:
        return false

proc problem4(): int =
    var largest = 0
    for i in 100..1000:
        for j in i..1000:
            var res = i * j
            if (isPalindrome(res) and (res > largest)):
                largest = res
    return largest

proc main() =
    let largest = problem4()
    assert(largest == 906609)
    echo("Output: ", largest)

main()
