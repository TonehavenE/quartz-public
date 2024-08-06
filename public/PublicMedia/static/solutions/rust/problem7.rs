/*
Purpose: Find the 10 001st prime number.

Author: Eben Quenneville
Date: 2023-02-11
*/
const TARGET_PRIME: i32 = 10001;

fn main() {
    let solution = problem7();
    assert!(solution == 104743);
    println!("Output: {}", solution);
}

fn problem7() -> i32 {
    let mut candidate = 1;
    let mut prime_count = 1;
    while prime_count < TARGET_PRIME {
        candidate += 2;
        if is_prime(candidate) {
            prime_count += 1;
        }
    }
    return candidate
}

fn is_prime(n: i32) -> bool {
    let mut prime = true;
    for i in 2..((n as f64).sqrt() as i32) + 1 {
        if n % i == 0 {
            prime = false;
            break;
        }
    }
    return prime
}