/*
Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million,
find the sum of the even-valued terms.

Author: Eben Quenneville
Date: 2022-09-03, modified 2023-01-27
*/
package main

import "fmt"

func problem2() int {
	sum := 2
	first := 1
	previous := 2
	current := first + previous
	for current+previous < 4000000 {
		first = previous
		previous = current
		current = first + previous
		if current%2 == 0 {
			sum += current
		}
	}
	return sum
}
func main() {
	sum := problem2()
	if sum != 4613732 {
		panic("Incorrect solution!")
	} else {
		fmt.Println("Output:", sum)
	}

}
