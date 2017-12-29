;linear recursive process
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

;linear iterative process
;(define (f n)
;  (define (iter a b c counter)
;    (if (> counter n)
;      c
;      (iter (+ a (* 2 b) (* 3 c))
;	    a
;	    b
;            (+ counter 1))))
;  (if (< n 0)
;    n
;    (iter 2 1 0 1)))

(begin
  (display (f 4))
  (newline))
