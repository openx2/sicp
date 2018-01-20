(begin
  (define (halve x) (arithmetic-shift x -1))
  (define (double x) (arithmetic-shift x 1))
  (define (multiply a b)
    (cond ((= b 0)
           0)
          ((even? b)
           (double (multiply a (halve b))))
          (else
            (+ a (multiply a (- b 1))))))
  (display (multiply 3 4))
  (newline))
