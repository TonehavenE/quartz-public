/**
 * Purpose: Find the difference between the sum of the squares of the first one
 * hundred natural numbers and the square of the sum.
 * 
 * @author Eben Quenneville
 * @version 2023-02-10
 */

public class Problem6 {
    public static void main(String[] args) {
        int solution = problem6();
        assert solution == 25164150;
        System.out.println("Output: " + solution);
    }

    /**
     * 
     * @return the difference between the sum of the squares of the first one
     *         hundred natural numbers and the square of the sum.
     */
    private static int problem6() {
        int high = 100;
        int sum = 0, sumOfSquares = 0;
        for (int i = 0; i <= high; i++) {
            sum += i;
            sumOfSquares += i * i;
        }
        return ((sum * sum) - sumOfSquares);
    }
}