(begin
  (define (fast-expt b n)
    (define (fast-expt-iter a b n)
      (cond ((= n 0)
             a)
            ((even? n)
             (fast-expt-iter a (square b) (/ n 2)))
            (else
              (fast-expt-iter (* a b) (square b) (integer-floor n 2)))))
    (fast-expt-iter 1 b n))
  (display (fast-expt 2 100))
  (newline))
