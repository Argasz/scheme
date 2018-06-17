(define (func n)
  (cond ((< n 3) n)
	(else (+(func (- n 1)) (* 2 (func (- n 2))) (* 3 (func (- n 3)))))))

(define (funcit n)
  (define (it a b c count)
    (if (< count 3)
	a
	(it (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (it 2 1 0 n))
	 
    

(funcit 25)
(func 25)
