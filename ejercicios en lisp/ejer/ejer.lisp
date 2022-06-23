; para ejecutar mas de una instruccion se sa prog1

(
    defun getNumPosLista(list1)
    (
        cond 
            ((null list1)
                ()
            )
            ((>= (first list1) 0)
                (cons (first list1) (getNumPosLista (rest list1)))
            )
            (t
                (getNumPosLista (rest list1))
            )
    )
)
(
    defun addNumDeOtraLista(list1 list2)
    (
        cond 
            ((null list2)
                list1
            )
            (t
                (cons (first list2) (addNumDeOtraLista list1 (rest list2)))
            )
    )
)



(print (getNumPosLista '(1 2 -3 5 -2)))
(print (addNumDeOtraLista '(1 2 3 8) '(-1 -3 -5 2 3 -4 9 7 4 -9)))

