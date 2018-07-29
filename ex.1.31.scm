(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
	 (product term (next a) next b))))

(define (productit term a next b)
  (define (product-it a acc)
    (if (> a b)
	acc
	(product-it (next a) (* acc (term a)))))
  (product-it a 1))




(define (factorial x)
  (productit (lambda (x) x) 1 (lambda (x) (+ x 1)) x))

(factorial 5)

(define (pi-approx n)
  (define (dividend x)
    (if (even? x) (+ x 2) (+ x 3)))
  (define (divisor y)
    (if (even? y) (+ y 3) (+ y 2)))

  (define (term x)
    (/ (dividend x) (divisor x)))

   (* 4.0 (productit term 0 (lambda (x) (+ x 1)) n)))
	


(pi-approx 10)

		       
	      
	      




