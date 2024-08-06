/*
Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
find the sum of the even-valued terms.

Author: Eben Quenneville
Date: 2022-11-12, modified 2023-01-27
*/
import assert from 'node:assert';

function problem2() {
    let sum = 2
    let first = 1 
    let previous = 2
    let current = first + previous
    while (current + previous < 4000000) {
        first = previous
        previous = current
        current = first + previous
        if (current % 2 == 0) { 
            sum += current
        }
    }
    return sum;
}

const sum = problem2();
assert(sum == 4613732);
console.log("Output:", sum)