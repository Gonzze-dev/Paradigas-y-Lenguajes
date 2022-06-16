; (
;     defun potencia (a b)
;         (cond   ((= b 0) 1)
;                 (t (* a (potencia a (- b 1))))
            
;         )
; )

; (
;     defun cantElementos(lista)
;     (
;         cond ((null lista) 0)
;              (t (+ 1 (cantElementos (rest lista))))
;     )
; )

; (
;     defun sumatoriaLista(lista)
;     (
;         cond ((null lista) 0)
;              (t (+ (first lista) (sumatoriaLista (rest lista))))
;     )
; )

; (
;     defun absoluto(num)
;     (cond
;         ((< num 0) (- 0 num))
;         (t num)
;     )
; )

(
    defun getListaMenoresAAlgo(lista num)
    (
        cons () nuevaLista
        cond
            ((null lista) 0)
            ((> num (first lista)) (getListaMenoresAAlgo (pop lista) num))
            (t (getListaMenoresAAlgo (rest lista) num))
    )
)

(print (getListaMenoresAAlgo '(2 8 9 3 4) 5))