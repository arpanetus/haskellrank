;; (λx.x+1)3

(define answer ((lambda (x) (+ x 1)) 3))

;; let's put 3 for all the x-es => 3+1 = 4
;; which is our answer