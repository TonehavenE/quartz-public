/*
Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million,
find the sum of the even-valued terms.

Author: Eben Quenneville
Date: 2022-09-03
*/
fn main() {
    let (mut first, mut previous, mut sum) = (1, 2, 2);
    let mut current = first + previous;
    while current + previous < 4_000_000 {
        first = previous;
        previous = current;
        current = first + previous;
        if current % 2 == 0 {
            sum += current;
        }
    }
    println!("{}", sum);
}
