/*
Purpose: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

@author: Eben Quenneville
@date: 2022-11-12, modified 2023-01-27
*/
public class Problem5 {
    public static void main(String[] args) {
        int solution = problem5();
        assert solution == 232792560;
        System.out.println("Output: " + solution);
    }

    /**
     * @return the smallest positive number that is evenly divisible by all of the
     *         numbers from 1 to 20
     */
    public static int problem5() {
        int[] divisors = { 7, 11, 13, 15, 16, 17, 18, 19, 20 };
        boolean found = false;
        int num = 2520;
        while (found == false) {
            num += 20;
            boolean good = true;
            for (int i = 0; i < divisors.length; i++) {
                if (good && num % divisors[i] != 0) {
                    good = false;
                }
            }
            if (good) {
                found = true;
            }
        }
        return num;
    }
}