(define (improve guess x)
(/ (+ (/ x (square guess)) (* guess 2)) 3))

(define (good-enough? prev-guess guess)
  (< (abs (- guess prev-guess)) 0.0001))

(define (cbrt-iter guess x)
  (if (good-enough? (improve guess x) guess)
      guess
      (cbrt-iter (improve guess x)
		 x)))

(define (cubrt x)
  (cbrt-iter 1.0 x))

(cubrt 5)




















