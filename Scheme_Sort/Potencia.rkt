#lang scheme

(define(pot x y)   ;; definir potência de base x e expoente y
  (if(zero? y)1    ;; se y é igual a 0 a potencia retorna 1
     (* x (pot x (- y 1)))))   ;; (- y 1) funciona como decrementador
                               ;; o cálculo é feito de maneira recursiva de pot


(display "Digite o valor da base: ")
(define x (read))
(display "Digite o valor do expoente: ")
(define y (read))
(display x)
(display " elevado a ")
(display y)
(display " é: ")
(display (pot x y))

