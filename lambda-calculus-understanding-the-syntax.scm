;; (λx.x+1)((λy.y+2)3)
(define answer ((lambda (x) (+ x 1))((lambda (y) (+ y 2)) 3)))
;; first we have to put 3 instead of y, then we get 3+2 => 5
;; then we have to put 5 instead of x, then we get 5+1 => 6
;; so the answer is 6