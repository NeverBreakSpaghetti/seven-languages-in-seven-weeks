(ns day1.bigger-string-then-test
  (:require [clojure.test :refer :all]
            [day1.bigger-string-then :refer :all]))

(deftest bigger-string-then-q
  (testing "String bigger than"
    (is (= false (big "a" 2)))
    (is (= false (big "a" 1)))
    (is (= true (big "ab" 1)))))