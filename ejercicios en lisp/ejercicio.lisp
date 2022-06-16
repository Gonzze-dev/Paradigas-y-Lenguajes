; 1
(
    defun cantElementos(lista)
    (
        cond ((null lista) 0)
             (t (+ 1 (cantElementos (rest lista))))
    )
)

; 2
(
    defun sumatoriaLista(lista)
    (
        cond ((null lista) 0)
             (t 
                (+ (first lista) (sumatoriaLista (rest lista)))
             )
    )
)

; 3
(
    defun absoluto(num)
    (cond
        ((< num 0) 
            (- 0 num))
        (t num)
    )
)

; 4
(
    defun getListaMenoresAAlgo(lista num)
    (cond
        ((null lista) ())
        ((> num (first lista)) 
            (getListaMenoresAAlgo (rest lista) num)
        )
        (t (cons (first lista) 
            (getListaMenoresAAlgo (rest lista) num ))
        )
        
    )
)

; 5
(
    defun menorNumero(lista)
    (cond
        ((null (rest lista))
            (first lista)
        )
        ((< (first lista) (menorNumero (rest lista)))
            (first lista)
        )
        (t
            (menorNumero (rest lista))
        )
        
    )
)

; 6
(
    defun potencia (a b)
    (cond  
        ((= b 0) 
            1
        )
        (t 
            (* a (potencia a (- b 1)))
        )
        
    )
)

; 7
(
    defun promedioNumerosLista(lista)
    (cond 
        ((null lista)
            ()
        )
        (t 
            (/ (sumatoriaLista lista) (cantElementos lista))
        )

    )

)


(print (menorNumero '(3 2 10 9 8 3 1 5 6)) )