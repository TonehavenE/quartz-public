/*
Purpose: Find the 10 001st prime number.

Author: Eben Quenneville
Date: 2023-01-31
*/
package main

import (
	"fmt"
	"math"
)

const TARGET_PRIME = 10001

func problem7() int {
	candidate := 1
	primeCount := 1
	for primeCount < TARGET_PRIME {
		candidate += 2
		if isPrime(candidate) {
			primeCount += 1
		}
	}
	return candidate
}

func isPrime(n int) bool {
	prime := true
	for i := 2; i < int(math.Sqrt(float64(n)))+1; i++ {
		if n%i == 0 {
			prime = false
			break
		}
	}
	return prime
}
func main() {
	solution := problem7()
	if solution != 104743 {
		panic("Incorrect solution!")
	}
	fmt.Println("Output:", solution)
}
