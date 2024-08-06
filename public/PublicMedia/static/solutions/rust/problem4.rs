/*
Purpose: Find the largest palindrome made from the product of two 3-digit numbers

Author: Eben Quenneville
Date: 2022-09-04
*/
fn main() {
    let mut largest = 0;
    for i in 100..1000 {
        for j in i..1000 {
            let result = i * j;
            if is_palindrome(result) && result > largest {
                largest = result;
            }
        }
    }
    println!("{}", largest);
}

fn reverse(mut n: i32) -> i32 {
    let mut reversed = 0;
    while n > 0 {
        reversed = 10 * reversed + n % 10;
        n /= 10;
    }
    reversed
}

fn is_palindrome(n: i32) -> bool {
    if n == reverse(n) {
        true
    } else {
        false
    }
}
