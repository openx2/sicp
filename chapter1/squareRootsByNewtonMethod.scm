(begin
  (define ~ exact->inexact)
  (define (my_sqrt x)
    (define (average a b)
      (/ (+ a b) 2))
    (define (square a) (* a a))
    (define (improve guess)
      (average guess (/ x guess)))
    (define (good-enough? guess)
      ;(< (abs (- (square guess) x)) 0.001)) ;orginal test
      (< (/ (abs (- (improve guess) guess)) guess) 1/100)) ;small fraction test
    (define (sqrt-iter guess)
      (if (good-enough? guess)
        (~ guess)
        ;guess
        (sqrt-iter (improve guess))))
    (sqrt-iter 1))
  (display (my_sqrt 0.000001)) ;exercise1.7 small number "Not precise"
  (newline)
  (display (my_sqrt 1000000)) ;exercise1.7 large number "TOO LONG TIME!!!"
  (newline))
