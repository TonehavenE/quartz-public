(comment 
  "Purpose: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
   
   Author: Eben Quenneville
   Date: 2023-03-04")

; Greatest common divisor
(defn gcd "returns the greatest common divisor of n1 and n2" [n1 n2]
  (if (== n2 0)
    n1
    (gcd n2 (mod n1 n2))))

; Least common multiple
(defn lcm "returns the least common multiple of a and b" [a b]
  (/ (* a b) (gcd a b)))

;; Main driver code
(defn problem5 []
  ; find the lcm of 1 and 2, then 2 and 3, then 6 and 4, etc
  (reduce lcm (range 1 21)))

;; Assert the solution
(defn main []
  (assert (== (problem5) 232792560))
  (println "Output: " (problem5)))
(main)
