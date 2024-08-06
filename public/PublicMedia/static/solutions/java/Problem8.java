/**
 * Purpose: Find the thirteen adjacent digits in the 1000-digit number that have the greatest product.
 * Note: the number is read in from a txt file
 * 
 * @author Eben Quenneville
 * @version 2023-02-10
 */

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Scanner;

public class Problem8 {
    // Constants (parameters of the problem)
    private static final int NUMDIGITS = 1000, SEQLENGTH = 13;

    public static void main(String[] args) {
        long solution = problem8();
        assert solution == 23514624000L; // L for long
        System.out.println("Output: " + solution);
    }

    /**
     * @return the array of digits contained within the file at `path`
     * @throws FileNotFoundException
     */
    private static int[] readDigits(String path) throws FileNotFoundException {
        int[] digits = new int[NUMDIGITS];
        File data = new File(path);
        Scanner in = new Scanner(data);
        String str = in.next();

        int i = 0;
        for (char ch : str.toCharArray()) {
            int digit = Character.getNumericValue(ch); // e.g. '1' returns 1
            digits[i] = digit;
            i++;
        }

        in.close();
        return digits;
    }

    /**
     * @return the largest product of 13 adjacent digits in the number
     */
    private static long problem8() {
        int[] digits = new int[NUMDIGITS];

        // Reading the file can fail, so we need a try/catch
        try {
            digits = readDigits("../8.txt");
        } catch (IOException e) {
            e.printStackTrace();
        }

        long largest = 0, product;
        for (int i = 0; i < NUMDIGITS - SEQLENGTH; i++) {
            product = 1;
            for (int j = 0; j < SEQLENGTH; j++) {
                product *= digits[i + j];
            }
            if (product > largest) {
                largest = product;
            }
        }
        return largest;
    }
}