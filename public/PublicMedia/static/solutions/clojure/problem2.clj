(comment 
  "Purpose: By considering the terms in the Fibonacci sequence whose values do not exceed four million,
   find the sum of the even-valued terms.
   Author: Eben Quenneville
   Date: 2023-03-04")

;; e.g. 1, 4, 9, 16...
(defn perfect_square? "Returns whether `n` is a perfect square" [n]
  (let [s (int (Math/sqrt n))] (== (* s s) n)))

(defn fibonacci? "Returns whether `n` is a Fibonacci number" [n]
  (or
   (perfect_square? (+ (* 5 n n) 4))
   (perfect_square? (- (* 5 n n) 4))))

(defn good? "returns whether `n` is a Fibonacci number and even" [n]
  (if (and (fibonacci? n) (even? n))
    true
    false))

;; Main driver code
(defn problem2 []
  (reduce + (filter good? (range 1 4000000))))

;; Assert the solution
(defn main []
  (assert (== (problem2) 4613732))
  (println "Output: " (problem2)))
(main)
