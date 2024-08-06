/*
Purpose: Find the largest prime factor of the number 600851475143

Author: Eben Quenneville
Date: 2022-09-04
*/
fn main() {
    let mut num: i64 = 600851475143;
    let mut i = 2;
    while i * i < num {
        if num % i == 0 {
            num /= i;
        } else {
            i += 1;
        }
    }
    println!("{}", num)
}
