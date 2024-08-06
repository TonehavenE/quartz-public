/* 
Purpose: Find the largest prime factor of the number 600851475143

Author: Eben Quenneville
Date: 2022-11-12, modified 2023-01-27
*/
import assert from 'node:assert';

function problem3() {
    let num = 600851475143
    let i = 2
    while (i * i <= num) {
        if (num % i == 0) {
            num /= i
        } else {
            i += 1
        }
    }
    return num;
}

let num = problem3()
assert(num == 6857);
console.log("Output:", num);
