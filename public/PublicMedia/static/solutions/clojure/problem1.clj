(comment
  "Purpose: Find the sum of all the multiples of 3 or 5 below 1000.
   Author: Eben Quenneville
   Date: 2023-03-04")

(defn good? "returns n if it is a multiple of 3 or 5, 0 otherwise" [n]
  (if (== (mod n 3) 0) n (if (== (mod n 5) 0) n 0)))
;; Main Driver code
(defn problem1 []
  (reduce + (map good? (range 1 1000))))

;; Assert the solution
(defn main []
  (assert (== (problem1) 233168))
  (println "Output: " (problem1)))
(main)
