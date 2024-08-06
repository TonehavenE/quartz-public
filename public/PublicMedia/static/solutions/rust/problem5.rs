/*
Purpose: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

Author: Eben Quenneville
Date: 2022-09-06
*/
fn main() {
    let divisors = [7, 11, 13, 15, 16, 17, 18, 19, 20];
    let mut found = false;
    let mut num = 2520;
    while found == false {
        num += 20;
        let mut good = true;
        for div in divisors {
            if good && num % div != 0 {
                good = false;
            }
        }
        if good {
            found = true;
        }
    }
    println!("{}", num);
}
