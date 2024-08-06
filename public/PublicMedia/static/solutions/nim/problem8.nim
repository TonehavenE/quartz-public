#[
Purpose: Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. 
Notes: 
    1. the number is read in from a txt file
    2. this solution is inefficient, and I know it. I wanted experience with making and working with Nim arrays.
Author: Eben Quenneville
Date: 2023-01-30
]#
from strUtils import parseInt
const seqLength = 13

# AdjSeq (AdjacentSequence) represents each distinct seqLength digit combination in the overall number
type
    AdjSeq = array[0..(seqLength - 1), int]

proc product(a: AdjSeq): int =
    # finds the product of the sequence of digits
    var product = a[0];
    for i in 1..a.len-1:
        product *= a[i]
    return product

proc problem8(): int =
    # returns the largest product seqLength adjacent digits

    # read the number as a string
    let entireFile = readFile("../8.txt")
    var numArray: seq[int]
    # convert the string to an integer sequence
    for char in @entireFile:
        numArray.add(parseInt($char))

    var largest = 0; # stores output
    for i in 0..numArray.len - (seqLength): # we index to i + seqLength in the next loop
        # create a sequence of seqLength subsequent digits, starting at i
        var seq: AdjSeq 
        for j in i..(i+seqLength - 1):
            seq[j-i] = numArray[j]
    
        if seq.product > largest:
            largest = seq.product
    return largest


proc main() =
    let largest = problem8()
    assert(largest == 23514624000)
    echo("Output: ", largest)

main()
