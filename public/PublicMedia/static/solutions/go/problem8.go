/*
Purpose: Find the thirteen adjacent digits in the 1000-digit number that have the greatest product.
Note: the number is read in from a txt file
Author: Eben Quenneville
Date: 2023-02-10
*/
package main

import (
	"fmt"
	"os"
)

const NUMDIGITS = 1000
const SEQLENGTH = 13

func check(e error) {
	// error checking for file I/O
	if e != nil {
		panic(e)
	}
}
func readDigits() [NUMDIGITS]int {
	// Read contents of file
	// `data` is an array of bytes
	data, error := os.ReadFile("../8.txt")
	check(error)
	var digits [NUMDIGITS]int
	for i, v := range string(data) {
		// for each 'rune'/char in data
		digits[i] = int(v - '0')
	}
	// Return the digits of the file
	return digits
}

func problem8() int {
	digits := readDigits()
	largest := 0
	for i := 0; i < NUMDIGITS-SEQLENGTH; i++ {
		product := 1
		for j := 0; j < SEQLENGTH; j++ {
			product *= digits[i+j]
		}
		if product > largest {
			largest = product
		}

	}
	return largest
}

func main() {
	solution := problem8()
	if solution != 23514624000 {
		panic("Incorrect solution!")
	}
	fmt.Println("Output:", solution)
}
