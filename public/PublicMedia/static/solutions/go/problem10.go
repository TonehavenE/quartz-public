/*
Purpose: Find the sum of all the primes below two million.

Author: Eben Quenneville
Date: 2023-02-10
*/
package main

import (
	"fmt"
	"math"
)

const LIMIT = 2_000_000

func problem10() int {
	crossLimit := int(math.Sqrt(float64(LIMIT))) + 1
	sieve := make([]bool, LIMIT)

	for i := 4; i < LIMIT; i += 2 {
		sieve[i] = true
	}

	for i := 3; i < crossLimit; i += 2 {
		if !sieve[i] {
			m := i * i
			for m < LIMIT {
				sieve[m] = true
				m += 2 * i
			}
		}
	}
	sum := 0
	for i := 2; i < LIMIT; i++ {
		if !sieve[i] {
			sum += i
		}
	}
	return sum
}

func main() {
	solution := problem10()
	if solution != 142913828922 {
		panic("Incorrect solution!")
	}
	fmt.Println("Output:", solution)
}
