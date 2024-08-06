(comment
  "Purpose: Find the largest palindrome made from the product of two 3-digit numbers
   
   Author: Eben Quenneville
   Date: 2023-03-04")

(defn palindrome? "returns whether n is a palindrome" [n]
  (= (str n) (apply str (reverse (str n)))))

;; Main driver code
(defn problem5 []
  ; For each combination (x, y) in x = [100..1000] and y = [x, 1000]
  ; if x * y is a palindrome, add it to the list
  ; then take the max of the list of palindromes 
  (apply max
         (for
          [x (range 100 1000)
           y (range x 1000)
           :let [p (* x y)]
           :when (palindrome? p)] p)))

;; Assert the solution
(defn main []
  (assert (== (problem5) 906609))
  (println "Output: " (problem5)))
(main)

