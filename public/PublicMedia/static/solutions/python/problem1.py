""" 
Purpose: Find the sum of all the multiples of 3 or 5 below 1000.

Author: Eben Quenneville
Date: 2022-09-03, modified 2023-01-29
"""
max = 1000

def problem1() -> int:
    sum = 0
    for i in range(1, max):
        if i % 3 == 0:
            sum += i
            continue
        if i % 5 == 0:
            sum += i
    return sum


def main():
    solution = problem1()
    assert solution == 233168
    print(f"Output: {solution}")


if __name__ == "__main__":
    main()

