;Tpq = [p+q, q;
;       q,  p];
;Tp'q' = Tpq^2 = [(p+q)^2+q^2, q*(p+q)+p*q; = [p^2+2*p*q+2*q^2, 2*p*q+q^2;
;                 q*(p+q)+p*q, p^2+q^2]        2*p*q+q^2,       p^2+q^2]
;Tpq and Tp'q' have the same form!!!
;So we can use this way to square tranformation T, and use fast-expt to calculate T^n.

(begin
  (define (fib n)
    (fib-iter 1 0 0 1 n))

  (define (fib-iter a b p q count)
    (cond ((= count 0) 
           b)
          ((even? count)
           (fib-iter a
                     b
                     (+ (square p) (square q)) ;compute p'
                     (+ (* 2 p q) (square q))  ;compute q'
                     (/ count 2)))
          (else 
            (fib-iter (+ (* b q) 
                         (* a q) 
                         (* a p))
                      (+ (* b p) 
                         (* a q))
                      p
                      q
                      (- count 1)))))

  (display (fib 9)) ;fib(9) = 34
  (newline))
