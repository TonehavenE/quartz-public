/*
Purpose: Find the sum of all the multiples of 3 or 5 below 1000.

Author: Eben Quenneville
Date: 2022-09-03
*/
fn main() {
    let mut sum = 0;
    for i in 1..1000 {
        if i % 3 == 0 {
            sum += i;
            continue;
        }
        if i % 5 == 0 {
            sum += i;
        }
    }
    println!("{} = 233168", sum)
}
