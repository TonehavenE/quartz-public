/*
Purpose: Find the thirteen adjacent digits in the 1000-digit number that have the greatest product.
Note: the number is read in from a txt file 
Author: Eben Quenneville
Date:  2023-02-19
*/
import assert from "node:assert"
import fs from "node:fs"

const SEQLENGTH = 13;
function readDigits(path) {
    try {
        const data = fs.readFileSync(path, 'utf8');
        let digits = data.split('').map(Number);
        return digits
    }
    catch (err) {
        console.log("Error:", err);
    }

}

function problem8() {
    let digits = readDigits("../8.txt");
    let largest = 0;
    for (let i = 0; i < digits.length - SEQLENGTH; i++) {
        let product = 1;
        for (let j = 0; j < SEQLENGTH; j++) {
            product *= digits[i + j];
        }
        if (product > largest) {
            largest = product;
        }
    }
    return largest;
}


const solution = problem8();
assert(solution == 23514624000);
console.log("Output:", solution);
