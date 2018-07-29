(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (accumulateit combiner null-value term a next b)
  (define (acc-it a acc)
    (if (> a b)
	acc
	(acc-it (next a) (combiner (term a) acc))))
  (acc-it a null-value))

(define (sumacc term a next b)
  (accumulateit + 0 term a next b))

(define (productacc term a next b)
  (accumulateit * 1 term a next b))

(sumacc (lambda (x) x) 1 (lambda (x) (+ x 1)) 5)
