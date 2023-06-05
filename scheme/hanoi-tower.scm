(define (hanoi-tower n a b c)
    (if (= 1 n) 1 (+ (hanoi-tower (- n 1) a c b) 1 (hanoi-tower (- n 1) b a c))))

(begin
    (display (hanoi-tower 32 1 2 3))
    (newline))