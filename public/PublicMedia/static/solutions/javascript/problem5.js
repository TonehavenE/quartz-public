/*
Purpose: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

Author: Eben Quenneville
Date: 2023-01-26
*/
import assert from 'node:assert';


function problem5() {
    let divisors = [7, 11, 13, 15, 16, 17, 18, 19, 20];
    let found = false;
    let num = 2520;
    while (!found) {
        num += 20;
        let good = true;
        for (let i = 0; i < divisors.length; i++) {
            if ((good) && ((num % divisors[i]) != 0)) {
                good = false;
            }
        }
        if (good) {
            found = true
        }
    }
    return num;
}

let num = problem5();
assert(num == 232792560)
console.log("Output:", num);
