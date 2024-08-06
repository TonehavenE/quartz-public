/*
Purpose: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

Author: Eben Quenneville
Date: 2022-09-06, modified 2023-01-27
*/
package main

import "fmt"

func problem5() int {
	divisors := [9]int{7, 11, 13, 15, 16, 17, 18, 19, 20}
	found := false
	num := 2520
	for found == false {
		num = num + 20
		good := true
		for _, div := range divisors {
			if (good) && ((num % div) != 0) {
				good = false
			}
		}
		if good {
			found = true
		}
	}
	return num
}

func main() {
	num := problem5()
	if num != 232792560 {
		panic("Incorrect solution!")
	} else {
		fmt.Println("Output:", num)
	}
}
