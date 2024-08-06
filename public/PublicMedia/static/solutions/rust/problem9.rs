/*
Purpose: Find the product a * b * c where a + b + c = 1000 and a^2 + b^2 = c^2

Author: Eben Quenneville
Date: 2023-02-11
*/
const GOAL: u32 = 1000;

fn main() {
    let solution = problem9();
    assert!(solution == 31875000);
    println!("Output: {}", solution);
}

fn problem9() -> u32 {
    for a in 3..GOAL/3 {
        for b in a..GOAL/2 {
            let c = GOAL - a - b;
            if is_triplet(a, b, c) {
                if a + b + c == GOAL {
                    return a * b * c;
                }
            }
        }
    }
    return 1;
}

fn is_triplet(a: u32, b: u32, c: u32) -> bool {
    if a.pow(2) + b.pow(2) == c.pow(2) {
        return true;
    }
    return false;
}