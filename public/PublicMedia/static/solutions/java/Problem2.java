/*
Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
find the sum of the even-valued terms.

Author: Eben Quenneville
Date: 2022-09-03, modified 2023-01-27
*/
public class Problem2 {
    public static void main(String[] args) {
        int solution = problem2();
        assert solution == 4613732;
        System.out.println("Output: " + solution);
    }

    /**
     * @return the sum of the even-valued Fibonacci numbers < 4,000,000
     */
    public static int problem2() {
        int sum = 2;
        int first = 1;
        int previous = 2;
        int current = first + previous;
        while (current + previous < 4000000) {
            first = previous;
            previous = current;
            current = first + previous;
            if (current % 2 == 0) {
                sum += current;
            }
        }
        return sum;
    }
}