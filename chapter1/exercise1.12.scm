;row
;1    1
;2    1   1
;3    1   2   1
;4    1   3   3   1 
;5    1   4   6   4   1
;...       ......
;col  1   2   3   4   5 ...

(begin
  (define (pascal row col)
    (if (or (= col 1)
	    (= col row))
      1
      (+ (pascal (- row 1) (- col 1))
	 (pascal (- row 1) col))))
  (display (pascal 5 3))
  (newline))
