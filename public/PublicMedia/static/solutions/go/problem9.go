/*
Purpose: Find the product a * b * c where a + b + c = 1000 and a^2 + b^2 = c^2

Author: Eben Quenneville
Date: 2023-02-10
*/
package main

import "fmt"

const GOAL = 1000

func isTriplet(a int, b int, c int) bool {
	if a*a+b*b == c*c {
		return true
	}
	return false
}

func problem9() int {
	for a := 3; a < GOAL/3; a++ {
		for b := a; b < GOAL/2; b++ {
			c := GOAL - a - b
			if isTriplet(a, b, c) {
				if a+b+c == GOAL {
					return a * b * c
				}
			}
		}
	}
	return -1
}

func main() {
	solution := problem9()
	if solution != 31875000 {
		panic("Incorrect solution!")
	}
	fmt.Println("Output:", solution)
}
