#lang scheme


;; CAR de um par é o primeiro item. E no caso de listas é a cabeça da lista
;; CDR retorna o segundo elemento do par que, no caso de listas, é a cauda da lista. 
;; CONS recebe 2 valores e forma um par. E no caso das listas seria como a cabeça e o rabo da lista.
;; null retorna #f se a lista estiver vazia
;; append adiciona elementos a uma lista

(define (repartir compara l1)
      (cond
        ((null? l1) '())   ;;checar se a lista esta vazia
        ((compara (car l1)) (cons (car l1) (repartir compara (cdr l1))))  ;;comparar
         (else (repartir compara (cdr l1)))))  ;;repartir

   (define (quicksort l1)
      (cond
         ((null? l1) '())   ;;checar se a lista esta vazia
         (else (let ((pivot (car l1)))  ;;selecionar o primeiro elemento como pivor

                 ;;classificar x em maior, igual e menor ao pivor
            (append (append (quicksort (repartir (lambda (x) (< x pivot)) l1)) ;;x é menor que  o pivor
                            (repartir (lambda (x) (= x pivot)) l1)             ;;x é igual ao pivor
                    (quicksort (repartir (lambda (x) (> x pivot)) l1))))))))    ;;x é maior que o pivor




(define (rev l1)
    (if (null? (cdr l1))  ;;checar se a lista esta vazia
        l1 ;;se a lista estiver vazia ele é retornada
        (append (rev (cdr l1)) (list (car l1)))))  ;;car é o primeiro elemento da lista e é adiconado na nova lista reversa
;;cdr recebe o segundo elemento q no caso da lista é sua cauda
;;ocorre a recursão e o novo primeiro elemento da cauda tambem é adicionado a nova lista reversa
;;ocorre a recursão até q a lista inicial retorne vaiza



(define user-input
  (lambda (l n)
    (if (= n 0)
	l
	(user-input (append (list (read)) l) (- n 1)))))


(display "Insira a quantidade de elementos da lista: ")
(define n (read))   
(display "Insira os elementos da lista: ")
(define l1 (user-input '() n))
(display "Lista de entrada: ")
(display (rev l1)) (newline)
(display "A lista ordenada: ")
(display (quicksort l1)) (newline)
(display "A lista reversa: ")
(display l1) (newline)