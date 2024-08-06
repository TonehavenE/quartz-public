(comment
  "Purpose: Find the largest prime factor of the number 600851475143 
   Author: Eben Quenneville
   Date: 2023-03-04")

(defn factors "Recursively returns the factors of n, bounded by lower" [n lower primes]
  (cond
    (> (* lower lower) n) (reverse (conj primes n))
    (== (rem n lower) 0) (factors (/ n lower) lower (conj primes lower))
    :else (factors n (+ lower 1) primes)))

(defn factors_for "Returns the factors for n as a vector" [n]
  (factors n 2 []))

;; Main driver code
(defn problem3 []
  (apply max (factors_for 600851475143)))

;; Assert the solution
(defn main []
  (assert (== (problem3) 6857))
  (println "Output: " (problem3)))
(main)
