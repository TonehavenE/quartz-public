/*
Purpose: Find the sum of all the multiples of 3 or 5 below 1000.

Author: Eben Quenneville
Date: 2022-09-03, modified 2023-01-27
*/
package main

import "fmt"

func problem1() int {
	var sum int = 0
	for i := 0; i < 1000; i++ {
		if i%3 == 0 {
			sum += i
			continue
		}
		if i%5 == 0 {
			sum += i
		}
	}
	return sum
}

func main() {
	var sum = problem1()
	// Go does not have an assert, so we use an if.
	if sum != 233168 {
		panic("Incorrect solution!")
	} else {
		fmt.Println("Output: ", sum)
	}
}
