/*
Purpose: Find the largest palindrome made from the product of two 3-digit numbers

Author: Eben Quenneville
Date: 2022-11-12, modified 2023-01-27
*/
import assert from 'node:assert';

function reverse(n) {
    reversed = 0
    while (n > 0) {
        reversed = 10 * reversed + n % 10
        n = Math.floor(n/10)
    }
    return reversed
}

function is_palindrome(n) {
    if (n == reverse(n)) {
        return true
    } else {
        return false
    }
}

function problem4() {
    let largest = 0
    for (let i = 100; i < 1000; i++) {
        for (let j = i; j < 1000; j++) {
            result = i * j;
            if (is_palindrome(result) && (result > largest)) {
                largest = result
            }
        }
    }
}

let largest = problem4();
assert(largest == 906609);
console.log("Output:", largest);