; Implement a function called (big st n) that returns true if a string str is longer than n characters.
(ns day1.bigger-string-then)

(defn big
  "str is bigger than n chars"
  [str n]
  (> (count str) n))