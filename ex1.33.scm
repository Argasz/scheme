(define (filtered-accumulate filter? combiner null-value term a next b)
  (if (> a b)
      null-value
      (if (filter? a)
	  (combiner (term a) (filtered-accumulate filter? combiner null-value term (next a) next b))
	  (filtered-accumulate filter? combiner null-value term (next a) next b))))


(define (sum-of-prime-squares a b)
  (filtered-accumulate fermat + 0 square a (lambda (x) (+ x 1)) b))

(sum-of-prime-squares 1 500)

(define (relprime? i n)
  (cond

2 3 5 

4 9 25