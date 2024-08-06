/* 
Purpose: Find the largest prime factor of the number 600851475143

Author: Eben Quenneville
Date: 2022-09-04, modified 2023-01-27
*/
public class Problem3 {
    public static void main(String[] args) {
        long solution = problem3();
        assert solution == 6857;
        System.out.println("Output: " + solution);
    }

    /**
     * @return the largest prime factor of 600851475143
     */
    public static long problem3() {
        long num = 600851475143L;
        int i = 2;
        while (i * i <= num) {
            if (num % i == 0) {
                num /= i;
            } else {
                i += 1;
            }
        }
        return num;
    }
}