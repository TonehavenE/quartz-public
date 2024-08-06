/*
Purpose: Find the product a*b*c where a+b+c = 1000 and a^2 + b^2 = c^2
Author: Eben Quenneville
Date: 2023-02-19
*/
import assert from "node:assert";
const GOAL = 1000

function isTriplet(a, b, c) {
    if (a * a + b * b == c * c) {
        return true;
    }
    return false;
}
function problem9() {
    for (let a = 3; a < GOAL / 3; a++) {
        for (let b = a; b < GOAL / 2; b++) {
            let c = GOAL - a - b;
            if (isTriplet(a, b, c)) {
                if (a + b + c == GOAL) {
                    return a * b * c
                }
            }
        }
    }
    return -1;
}
const solution = problem9();
assert(solution == 31875000);
console.log("Output:", solution);
