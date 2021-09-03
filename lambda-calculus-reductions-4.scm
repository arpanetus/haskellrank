;; (λg.((λf.((λx.(f (x x))) (λx.(f (x x)))) ) g)) 

;; okay, it seems to be a function
(lambda (g) ((lambda (f) ( (lambda (x) (f (x x))) (lambda (x) (f (x x))) )) g))

;; since we clearly see a recursive pattern
(lambda (x) (f (x x))) (lambda (x) (f (x x)))

;; we can claim that it's not reducible
;; so the answer is "CAN'T REDUCE"