(define (sum term a next b)
  (if (> a b)
      0
      (+(term a)
	 (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

(define (even? n)
  (= (remainder n 2) 0))


(define (simpson f a b n)
  (define (simpit f a b n k acc)
    (let ((h (/ (- b a) n)))
      (cond ((= k n) (+ acc (f (+ a (* k h)))))
	    ((even? k) (simpit f a b n (+ k 1) (+ acc (* 4 (f (+ a (* k h)))))))
	    ((= k 0) (simpit f a b n (+ k 1) (+acc (f (+ a (* k h))))))
	    (else (simpit f a b n (+ k 1) (+ acc (* 2 (f (+ a (* k h))))))))))
 (* (/ (/ (- b a) n) 3) (simpit f a b n 0 0)))

(define (simpsum f a b n)
  (define (h)
    (/ (- b a) n))
  
  (define (y k)
    (f (+ a (* k (h))))) 
  
  (define (term x)
    (cond ((= x n) (y x))
	  ((= x 0) (y x))
	  ((even? x) (* 4 (y x)))
	  (else (* 2 (y x)))))
  (* (/ (h) 3) (sum term 0 inc n)))


  
(define (inc x)
  (+ x 1))
  
  


(define (cube x)
  (* x x x))

(integral cube 0 1 0.01)

(simpson cube 0 1 1000)

(simpsum cube 0 1 1000)



