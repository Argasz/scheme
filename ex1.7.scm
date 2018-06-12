(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? prev-guess guess x)
  (< (abs (- guess prev-guess)) 0.0000001))

(define (improve guess x)
  (average guess(/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? (improve guess x) guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (squrt x)
  (sqrt-iter 1.0 x))

(squrt 39583589342343424533)

