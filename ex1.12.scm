(define (fact n)
  (if (= n 1)
      n
      (* n ( fact (- n 1)))))


(define (n-choose-k n k)
  (/(fact n)(*(fact k) (fact (- n k)))))

(define (printp level)
  (define (print-iter level count)
    (if (not(= count 1))
	(cons* (n-choose-k level count) (print-iter level (- count 1)))
	(list (n-choose-k level count))))
  (if (= level 1)
      (list 1)
      (list 1 (print-iter level (- level 1)) 1)))


(define (printria level)
  (newline)
  (display (printp level))
  (if (not(= level 1))
      (printria (- level 1))))

     

(printria 30)


