/*
Purpose: Find the 10 001st prime number.
Author: Eben Quenneville
Date: 2023-02-19
*/
import assert from "node:assert";
const TARGET_PRIME = 10001;

function problem7() {
    let candidate = 1; let primeCount = 1;
    while (primeCount < TARGET_PRIME) {
        candidate += 2;
        if (isPrime(candidate)) {
            primeCount += 1;
        }
    }
    return candidate;
}
function isPrime(n) {
    let prime = true;
    if (n > 1) {
        for (let i = 2; i < Math.sqrt(n) + 1; i++) {
            if (n % i == 0) {
                prime = false;
                break;
            }
        }
    } else {
        // n is 0, 1, or negative; we assert that 1 is not prime
        prime = false;
    }
    return prime
}
const solution = problem7();
assert(solution == 104743);
console.log("Output:", solution);
