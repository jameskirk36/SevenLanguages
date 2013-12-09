;; Implement a function called (big st n) that returns true if a string st is longer than n characters.
;; usage (assuming Classpath env variable is correct): 
;;  (load "Day1/1")
;;  (big "boooo" 2)
;;  (big "boooo" 9)

(defn big [st n]( > ( count st ) n ) )
