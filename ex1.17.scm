(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (mult a b)
  (cond ((= b 0) 0)
        ((even? b)(+ (double a) (mult a (- b 2))))
	(else (+ a (mult a (- b 1))))))

(mult 3 7)





















