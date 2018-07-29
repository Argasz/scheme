(define (cont-frac n d k)
  (define (int-frac i)
    (if (= i k)
	(/ (n i) (d i))
        (+ (d (- i 1)) (/ (n i) (int-frac (+ i 1))))))
  (/ (n 1) (int-frac 2.0)))

(cont-frac (lambda (i) 1.0)
	   (lambda (i) 1.0)
	   15) ; phi




(cont-frac (lambda (i) 1)
		(lambda (i) 
		  (if (= (modulo i 3) 2)
		      (/ (+ i 1) 1.5)
		      1))
		1000) ;ex1.38 e - 2


(define (tan-cf x k)
  (cont-frac (lambda (i)
	       (if (= i 1)
		   x
		   (- (square x))))
	     (lambda (i)
	       (- (* i 2) 1))
	     k)) ; 1.39


(tan-cf 1 100)
		   















   












