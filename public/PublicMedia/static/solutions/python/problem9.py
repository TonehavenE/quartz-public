"""
Purpose: Find the product a * b * c where a + b + c = 1000 and a^2 + b^2 = c^2

Author: Eben Quenneville
Date: 2023-01-31
"""
goal = 1000


def isTriplet(a: int, b: int, c: int) -> bool:
    if a * a + b*b == c*c:
        return True
    return False


def problem9() -> int:
    for a in range(3, int(goal / 3)):
        for b in range(a, int(goal / 2)):
            c = goal - a - b
            if isTriplet(a, b, c):
                if a + b + c == goal:
                    return a * b * c
    return -1  # not found


def main():
    solution = problem9()
    assert solution == 31875000 # for goal = 1000
    print(f"Output: {solution}")


if __name__ == "__main__":
    main()
