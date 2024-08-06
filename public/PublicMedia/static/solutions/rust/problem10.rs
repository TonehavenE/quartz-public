/*
Purpose: Find the sum of all the primes below two million.

Author: Eben Quenneville
Date: 2023-02-13
*/
use std::convert::TryInto;
const LIMIT: usize = 2_000_000;

fn main() {
    let solution = problem10();
    assert!(solution == 142913828922);
    println!("Output: {}", solution);
}

fn problem10() -> u64 {
    let cross_limit = (LIMIT as f64).sqrt() as u64;
    let mut sieve: [bool; LIMIT] = [false; LIMIT];

    for i in (4..LIMIT).step_by(2) {
        sieve[i] = true;
    }

    for i in (3..cross_limit).step_by(2) {
        if !sieve[i as usize] {
            let mut m = i.pow(2);
            while m < LIMIT.try_into().unwrap() {
                sieve[m as usize] = true;
                m += 2 * i;
            }
        }
    }
    let mut sum = 0;
    for i in 2..LIMIT {
        if !sieve[i] {
            sum += i;
        }
    }
    return sum.try_into().unwrap()
}