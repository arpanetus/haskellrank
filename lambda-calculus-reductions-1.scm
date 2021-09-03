(define y 5)
(define answer ((lambda (x) (x y))(lambda (z) z)))

;; (λx.(x y))(λ.z z)
;; ((λ.z z) y)
;; y