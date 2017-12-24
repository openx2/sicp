(begin
  (define ~ exact->inexact)
  (define (average a b)
    (/ (+ a b) 2))
  (define (square x) (* x x))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (good-enough? guess x)
    ;(< (abs (- (square guess) x)) 0.001)) ;orginal test
    (< (/ (abs (- (improve guess x) guess)) guess) 1/100)) ;small fraction test
  (define (sqrt-iter guess x)
    (if (good-enough? guess x)
      (~ guess)
      ;guess
      (sqrt-iter (improve guess x) x)))
  (define (my_sqrt x)
    (sqrt-iter 1 x))
  (display (my_sqrt 0.000001)) ;exercise1.7 small number "Not precise"
  (newline)
  (display (my_sqrt 1000000)) ;exercise1.7 large number "TOO LONG TIME!!!"
  (newline))
