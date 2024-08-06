/*
Purpose: Find the difference between the sum of the squares of the
first one hundred natural numbers and the square of the sum.

Author: Eben Quenneville
Date: 2023-01-29
*/
fn problem6() -> u32 {
    let mut sum = 0;
    let mut sum_of_squares = 0;
    let max = 100;
    for i in 1..max + 1 {
        sum_of_squares += i * i;
        sum += i;
    }
    let square_of_sum = sum * sum;
    return square_of_sum - sum_of_squares;
}

fn main() {
    let solution = problem6();
    assert_eq!(solution, 25164150);
    println!("Output: {}", solution);
}
