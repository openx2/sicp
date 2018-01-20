(begin
  (define (halve x) (arithmetic-shift x -1))
  (define (double x) (arithmetic-shift x 1))
  (define (fast-multiply b n)
    (define (fast-multiply-iter a b n)
      (cond ((= n 0)
             a)
            ((even? n)
             (fast-multiply-iter a (double b) (halve n)))
            (else
              (fast-multiply-iter (+ a b) (double b) (halve n)))))
    (fast-multiply-iter 0 b n))
  (display (fast-multiply 3 18))
  (newline))
