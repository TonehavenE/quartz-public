(comment 
  "Purpose: Find the difference between the sum of the squares of the first one
   hundred natural numbers and the square of the sum.
   
   Author: Eben Quenneville
   Date: 2023-03-04")

;; sqr = square
(defn sqr "returns n * n" [n]
  (* n n))

;; Main driver code
(defn problem6 []
  (let [r (range 0 101)
        sum (reduce + r)
        sumSquares (reduce + (map sqr r))]
    (- (sqr sum) sumSquares)))

;; Assert the solution
(defn main []
  (assert (== (problem6) 25164150))
  (println "Output: " (problem6)))
(main)
