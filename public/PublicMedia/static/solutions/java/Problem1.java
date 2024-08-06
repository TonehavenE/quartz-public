/*
Purpose: Find the sum of all the multiples of 3 or 5 below 1000.

Author: Eben Quenneville
Date: 2022-09-03, modified 2023-01-27
*/
public class Problem1 {
    public static void main(String[] args) {
        int sum = problem1();
        assert sum == 233168;
        System.out.println("Output: " + sum);
    }

    /**
     * @return the sum of all the multiples of 3 or 5 below 1000
     */
    public static int problem1() {
        int sum = 0;
        for (int i = 0; i < 1000; i++) {
            if (i % 3 == 0) {
                sum += i;
                continue;
            }
            if (i % 5 == 0) {
                sum += i;
            }
        }
        return sum;
    }
}
