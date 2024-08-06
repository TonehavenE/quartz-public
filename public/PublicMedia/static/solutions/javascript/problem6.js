/*
Purpose: Find the difference between the sum of the squares of the first one
hundred natural numbers and the square of the sum.

Author: Eben Quenneville
Date: 2023-02-19
*/
import assert from 'node:assert';

function problem6() {
    const high = 100
    const arrNums = Array.from(Array(high + 1).keys())
    const initialValue = 0
    const sum = arrNums.reduce(
        (accumulator, currentValue) => accumulator + currentValue, initialValue
    );
    const sumOfSquares = arrNums.reduce(
        (accumulator, currentValue) => accumulator + (currentValue * currentValue), initialValue
    );
    return ((sum * sum) - sumOfSquares)
}

let solution = problem6()
assert(solution == 25164150)
console.log("Output:", solution)
