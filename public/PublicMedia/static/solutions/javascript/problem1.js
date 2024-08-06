/*
Purpose: Find the sum of all the multiples of 3 or 5 below 1000.

Author: Eben Quenneville
Date: 2022-11-12, modified 2023-01-27
*/
import assert from 'node:assert';

function problem1() {
    var sum_of_multiples = 0;
    for (var i = 0; i < 1000; i++) {
        if (i % 3 == 0) {
            sum_of_multiples += i;
            continue;
        }
        if (i % 5 == 0) {
            sum_of_multiples += i;
        }
    }
    return sum_of_multiples;
}

let sum = problem1();
assert(sum == 233168);
console.log("Output:", sum);
