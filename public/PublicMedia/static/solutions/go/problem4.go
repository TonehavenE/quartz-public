/*
Purpose: Find the largest palindrome made from the product of two 3-digit numbers

Author: Eben Quenneville
Date: 2022-09-05, modified 2023-01-27
*/
package main

import "fmt"

func problem4() int {
	largest := 0
	for i := 100; i < 1000; i++ {
		for j := i; j < 1000; j++ {
			result := i * j
			if is_palindrome(result) && (result > largest) {
				largest = result
			}
		}
	}
	return largest
}

func main() {
	largest := problem4()
	if largest != 906609 {
		panic("Incorrect solution!")
	} else {
		fmt.Println("Output:", largest)
	}
}

func reverse(n int) int {
	reversed := 0
	for n > 0 {
		reversed = 10*reversed + n%10
		n /= 10
	}
	return reversed
}

func is_palindrome(n int) bool {
	if n == reverse(n) {
		return true
	} else {
		return false
	}
}
