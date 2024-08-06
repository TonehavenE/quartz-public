/*
Purpose: Find the difference between the sum of the squares of the first one
hundred natural numbers and the square of the sum.

Author: Eben Quenneville
Date: 2023-01-31
*/
package main

import "fmt"

func problem6() int {
	high := 100
	sum := 0
	sumOfSquares := 0
	for i := 0; i <= high; i++ {
		sum += i
		sumOfSquares += i * i
	}
	return ((sum * sum) - sumOfSquares)
}

func main() {
	solution := problem6()
	if solution != 25164150 {
		panic("Incorrect solution!")
	}
	fmt.Println("Output:", solution)
}
