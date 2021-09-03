(define w 5)
(define answer ((lambda (x) ((lambda (y) (x y)) x))(lambda (z) w)))

;; ((λx.((λy.(x y))x))(λz.w))
;; x is an argument of nested function => thus (λz.w) is the value of that argument
;; (λy.((λz.w) y)) (λz.w)
;; (λy.((λz.w) y)) (λz.w)
;; (λz.w) (λz.w)
;; I have no idea how to reduce, but the answer yields 5 => thus I guess it's the same as before