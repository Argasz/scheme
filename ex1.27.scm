(define (congruent? a n)
  (= (modulo a n) (modulo (fast-exp a n) n)))


(define (fast-exp b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-exp b (/ n 2))))
	(else (* b (fast-exp b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (fermat n)
  (define (fermat-iter n a)
    (cond ((= a n) #t)
	  ((congruent? a n) (fermat-iter n (+ a 1)))
	  (else #f)))
  (fermat-iter n 1))

(fermat 2821)

