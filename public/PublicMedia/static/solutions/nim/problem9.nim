#[
Purpose: Find the product a * b * c where a + b + c = 1000 and a^2 + b^2 = c^2

Author: Eben Quenneville
Date: 2023-01-30
]#
const goal = 1000

proc isTriplet(a: int, b: int, c: int): bool =
    # returns whether or not the sequence is a Pythagorean triplet
    if (a*a) + (b*b) == (c*c):
        return true
    return false

proc problem9(): int = 
    for a in 3..int(goal / 3): # guessed the range
        for b in a..int(goal - a / 2): # another guess
            let c = goal-a-b # a + b + c = goal, c = goal - a - b
            if isTriplet(a, b, c):
                if a + b + c == goal:
                    return a * b * c
    return -1 # not found

proc main() =
    let product = problem9()
    assert(product == 31875000)
    echo("Output: ", product)

main()