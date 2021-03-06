;linear recursive process
;(define (factorial n)
;  (if (= n 1)
;    1
;    (* n (factorial (- n 1)))))

;linear iterative process
(define (factorial n)
  (define (iter product counter)
    (if (> counter n)
      product
      (iter (* product counter)
            (+ counter 1))))
    (iter 1 1))

(begin
  (display (factorial 5))
  (newline))
