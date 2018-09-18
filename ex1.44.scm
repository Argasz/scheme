(define (smooth f dx)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-fold-smooth f n dx)
  (repeated (smooth f dx) n))



