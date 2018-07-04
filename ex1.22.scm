(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (newline)
  (display " *** ")
  (display elapsed-time))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (even? n)
  (= (remainder n 2) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (search-for-primes start end)
  (define (elser cur end)
    (timed-prime-test cur)
    (search (+ cur 1) end))

  (define (search cur end)
    (if (not (= cur end))
	(if (even? cur)
	    (search (+ cur 1) end)
	    (elser cur end))))
  (search start end))

(search-for-primes 1000000000000 1000000000100)

  
  




