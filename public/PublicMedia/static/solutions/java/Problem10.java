/**
 * Purpose: Find the sum of all the primes below two million.
 * 
 * @author Eben Quenneville
 * @version 2023-02-10
 */
public class Problem10 {
    private static final int LIMIT = 2_000_000;

    public static void main(String[] args) {
        long solution = problem10();
        assert solution == 142913828922L;
        System.out.println("Output: " + solution);
    }

    /**
     * @return the sum of all the primes below LIMIT
     */
    private static long problem10() {
        int crossLimit = (int) Math.sqrt( (double) LIMIT) + 1;
        boolean[] sieve = new boolean[LIMIT];

        for (int i = 4; i < LIMIT; i += 2) {
            sieve[i] = true;
        }

        for (int i = 3; i < crossLimit; i += 2) {
            if (!sieve[i]) {
                int m = i * i;
                while (m < LIMIT) {
                    sieve[m] = true;
                    m += 2*i;
                }
            }
        }
        long sum = 0;
        for (int i = 2; i < LIMIT; i++) {
            if (!sieve[i]) {
                sum += i;
            }
        }
        return sum;
    }
}