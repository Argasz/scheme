(define (even? x)
      (= (remainder x 2) 0))

(define (it-exp b n)
  (define (it b n a)
    (cond ((= n 0) a)
	  ((even? n) (it (square b) (/ n 2) a))
	  (else (it b (- n 1) (* a b)))))
  (it b n 1))

(it-exp 3 5)




