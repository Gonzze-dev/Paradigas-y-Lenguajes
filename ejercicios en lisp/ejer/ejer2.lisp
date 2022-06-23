
(
    defun getListaMenoresAAlgo(lista num)
    (
        cond
            ((null lista) 
                ()
            )
            ((> num (first lista)) 
                (getListaMenoresAAlgo (rest lista) num)
            )
            (t 
                (cons (first lista) (getListaMenoresAAlgo (rest lista) num ))
            )
        
    )
)

(
    defun numMenores(lista num)
    (   
        cond
            ((null lista)
                ()
            )
            ((> num (first lista))
                (numMenores (rest lista) num)
            )
            (t 
                (cons (first lista) (numMenores (rest lista) num ))
            )
    )
)

(print (numMenores '(1 2 3 5 9 8 7 6 5) 5))

(print (getListaMenoresAAlgo '(1 2 3 5 9 8 7 6 5) 5))