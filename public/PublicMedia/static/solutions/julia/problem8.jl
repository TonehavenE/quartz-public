# Find the thirteen adjacent digits in the 1000-digits
# number with the greatest product.
#
# Author: Eben Quenneville
# Date: 2023-02-21

function problem8()
    seqLength = 13
    strDigits = open(f -> read(f, String), "8.txt")
    # convert the string to an array, 
    # then parse each element to a int
    digits = parse.(Int64, split(strDigits, ""))

    largest = 0
    # Iterate over each sequence of 13
    for i in 1:(length(digits)-seqLength)
        product = 1
        for j in 1:seqLength
            product *= digits[i+j]
        end
        if product > largest
            largest = product
        end
    end
    return largest
end

function main()
    solution = problem8()
    @assert(solution == 23514624000)
    println("Output: ", solution)
end

main()
