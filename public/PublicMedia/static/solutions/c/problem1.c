/*
Purpose: Find the sum of all the multiples of 3 or 5 below 1000.

Author: Eben Quenneville
Date: 2022-09-05, updated 2023-01-27
*/
#include <stdio.h>
#include <assert.h>

int problem1()
{
    int sum = 0;
    for (int i = 0; i < 1000; i++)
    {
        if (i % 3 == 0)
        {
            sum = sum + i;
            continue;
        }
        if (i % 5 == 0)
        {
            sum = sum + i;
        }
    }
    return sum;
}

int main()
{
    int sum = problem1();
    assert(sum == 233168);
    printf("Output: %d\n", sum);
    return 0;
}