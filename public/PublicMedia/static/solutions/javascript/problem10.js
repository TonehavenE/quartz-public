/*
Purpose: find the sum of all the primes below two million
Author: Eben Quenneville
Date: 2023-02-19
*/
import assert from "node:assert"

const LIMIT = 2000000

function problem10() {
    let crossLimit = Math.sqrt(LIMIT) + 1;
    let sieve = new Array(LIMIT).fill(false);

    for (let i = 4; i < LIMIT; i += 2) {
        sieve[i] = true;
    }
    for (let i = 3; i < crossLimit; i += 2) {
        if (!sieve[i]) {
            let m = i * i;
            while (m < LIMIT) {
                sieve[m] = true;
                m += 2 * i;
            }
        }
    }

    let sum = 0;
    for (let i = 2; i < LIMIT; i++) {
        if (!sieve[i]) {
            sum += i;
        }
    }
    return sum;
}
const solution = problem10();
assert(solution == 142913828922);
console.log("Output:", solution);
