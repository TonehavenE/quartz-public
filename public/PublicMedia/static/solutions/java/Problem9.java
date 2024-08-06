/**
 * Purpose: Find the product a * b * c where a + b + c = 1000 and a^2 + b^2 = c^2
 * 
 * @author Eben Quenneville
 * @version 2023-02-10
 */
public class Problem9 {
    // Constants 
    private static final int GOAL = 1000;

    public static void main(String[] args) {
        int solution = problem9();
        assert solution == 31875000;
        System.out.println("Output: " + solution);
    }

    /**
     * 
     * @param a Side int a
     * @param b Side int b
     * @param c Side int c
     * @return boolean of whether or not the triangle formed by sides
     *         a, b, c is a Pythagorean triplet (a^2 + b^2 = c^2 )
     */
    private static boolean isTriplet(int a, int b, int c) {
        if (a * a + b * b == c * c) {
            return true;
        }
        return false;
    }

    /**
     * @return the product abc where a+b+c = 1000 and a^2 + b^2 = c^2
     */
    private static int problem9() {
        for (int a = 3; a < GOAL / 3; a++) {
            for (int b = a; b < GOAL / 2; b++) {
                int c = GOAL - a - b;
                if (isTriplet(a, b, c)) {
                    if (a + b + c == GOAL) {
                        return a * b * c;
                    }
                }
            }
        }
        return -1;
    }
}