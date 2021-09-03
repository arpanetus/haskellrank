
;; ((λx.(x x))(λx.(x x)))
;; beta-reduction -> thus all the x-s are replaced by (λx.(x x))
;; and since it simply it's
;; (λx.((λx.(x x)) (λx.(x x)))) 
;; reduced to the original
;; we came to the conclusion that the function is not reducible
;; let's imitate it's behaviour

(define recboi ((lambda (x) (x))(lambda (x) (x)))

;; scheme can't complete it, since it's recursive with no state of stop
;; while haskell argues it's infinite, which is true
;; (\x -> (x x)) (\x -> (x x))
;; so the answer is "CAN'T REDUCE"