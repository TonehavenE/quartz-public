/*
Purpose: Find the largest prime factor of the number 600851475143

Author: Eben Quenneville
Date: 2022-09-04, modified 2023-01-27
*/
package main

import "fmt"

func problem3() int {
	num := 600851475143
	i := 2
	for i*i < num {
		if num%i == 0 {
			num /= i
		} else {
			i += 1
		}
	}
	return num
}
func main() {
	num := problem3()
	if num != 6857 {
		panic("Incorrect solution!")
	} else {
		fmt.Println(num)
	}

}
