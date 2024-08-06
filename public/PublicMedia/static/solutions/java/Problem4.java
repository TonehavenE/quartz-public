/*
Purpose: Find the largest palindrome made from the product of two 3-digit numbers

Author: Eben Quenneville
Date: 2022-09-04, modified 2023-01-27
*/
public class Problem4 {
    public static void main(String[] args) {
        int solution = problem4();
        assert solution == 906609;
        System.out.println("Output: " + solution);
    }

    /**
     * @return n in reverse order, e.g. reverse(1234) -> 4321
     */
    public static int reverse(int n) {
        int reversed = 0;
        while (n > 0) {
            reversed = 10 * reversed + (n % 10);
            n = n / 10;
        }
        return reversed;
    }

    /**
     * @return whether the input, n, is a palindrome. e.g. isPalindrome(1001) ->
     *         true
     */
    public static boolean isPalindrome(int n) {
        if (n == reverse(n)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * @return the largest palindrome made from the product of two 3-digit numbers
     */
    public static int problem4() {
        int largest = 0;
        for (int i = 100; i < 1000; i++) {
            for (int j = i; j < 1000; j++) {
                int result = i * j;
                if (isPalindrome(result) && result > largest) {
                    largest = result;
                }
            }
        }
        return largest;
    }
}