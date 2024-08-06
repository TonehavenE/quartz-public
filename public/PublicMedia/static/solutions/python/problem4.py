"""
Purpose: Find the largest palindrome made from the product of two 3-digit numbers

Author: Eben Quenneville
Date: 2022-09-04, modified 2023-01-29
"""


def problem4() -> int:
    largest = 9009
    for i in range(1000):
        for j in range(1000):
            result = i * j
            if is_palindrome(result) and result > largest:
                largest = result
    return largest


def main():
    solution = problem4()
    assert solution == 906609
    print(f"Output: {solution}")


def is_palindrome(num: int) -> bool:
    arr = [int(x) for x in str(num)]
    if arr == arr[::-1]:
        return True
    else:
        return False


if __name__ == "__main__":
    main()
