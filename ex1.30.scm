(define (sum-iter term a next b)
  (define (iter a result)
    (if (= a b) 
	(+ (term a) result)
	(iter (next a) (+ (term a) result))))
  (iter a 0))

(sum-iter square 49 (lambda (x) (+ x 1)) 50)

