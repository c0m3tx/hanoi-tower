(defn hanoi-tower [n a b c]
  (if (= n 1)
    1
    (+ (hanoi-tower (- n 1) a c b) 1 (hanoi-tower (- n 1) b a c))))

(hanoi-tower 32 "a" "b" "c")