/*
Purpose: Find the thirteen adjacent digits in the 1000-digit number that have the greatest product.
Note: the number is read in from a txt file
Author: Eben Quenneville
Date: 2023-02-11
*/
use std::fs::File;
use std::io::prelude::*;
use std::path::Path;

const SEQLENGTH: usize = 13;
fn main() {
    let solution = problem8();
    assert!(solution == 23514624000);
    println!("Output: {}", solution);
}

fn problem8() -> u64 {
    let path = Path::new("../8.txt");
    let digits = read_digits(&path);
    let mut largest = 0;
    for i in 0..(digits.len() - SEQLENGTH) {
        let mut product = 1;
        for j in 0..SEQLENGTH {
            product *= digits[i + j];
        }
        if product > largest {
            largest = product;
        }
    }
    return largest;
}

fn read_digits(path: &Path) -> Vec<u64> {
    let display = path.display();
    let mut file = match File::open(path) {
        Err(why) => panic!("Couldn't open {}: {}", display, why),
        Ok(file) => file,
    };

    let mut s = String::new();
    match file.read_to_string(&mut s) {
        Err(why) => panic!("couldn't read {}: {}", display, why),
        Ok(_) => (),
    };

    let mut digits: Vec<u64> = Vec::new();
    for c in s.chars() {
        digits.push(c.to_digit(10).unwrap().into())
    }
    return digits;
}