
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (average-damp f guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
  (try first-guess))

(define (average-damp f x)
  (average x (f x)))

(define (average x y)
  (/ (+ x y) 2))

(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0) ; golden ratio
(fixed-point (lambda (x) (/ (log 1000) (log x))) 1.1)
