/**
 * Purpose: Find the 10 001st prime number.
 * 
 * @author Eben Quenneville
 * @version 2023-02-10
 */
public class Problem7 {
    // Constants
    private static final int TARGET_PRIME = 10001;

    public static void main(String[] args) {
        int solution = problem7();
        assert solution == 104743;
        System.out.println("Output: " + solution);
    }

    /**
     * 
     * @param n any integer
     * @return whether or not n is a prime number
     */
    private static boolean isPrime(int n) {
        boolean prime = true;
        for (int i = 2; i < (int) (Math.sqrt((double) n)) + 1; i++) {
            if (n % i == 0) {
                prime = false;
                break;
            }
        }
        return prime;
    }

    /**
     * 
     * @return the this.TARGET_PRIMEth prime number, e.g. 10001th prime
     */
    private static int problem7() {
        int candidate = 1, primeCount = 1;
        while (primeCount < TARGET_PRIME) {
            candidate += 2;
            if (isPrime(candidate)) {
                primeCount += 1;
            }
        }
        return candidate;
    }
}
