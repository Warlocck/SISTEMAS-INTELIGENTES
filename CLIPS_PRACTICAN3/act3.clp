(clear)

(deftemplate vector
    (slot nombre)
    (multislot elementos (type SYMBOL)))

(deffacts datos-iniciales
    (vector (nombre v1) (elementos B C A D E E B C E))
    (vector (nombre v2) (elementos E E B C A F E)))

(defrule encontrar-union
    (vector (nombre v1) (elementos $?lista1))
    (vector (nombre v2) (elementos $?lista2))
    =>
    (bind ?union (create$))  ; Inicializar lista vacía
    ; Añadir elementos de la primera lista sin duplicados
    (foreach ?e ?lista1
        (if (not (member$ ?e ?union)) then
            (bind ?union (create$ ?union ?e))
        )
    )
    ; Añadir elementos de la segunda lista sin duplicados
    (foreach ?e ?lista2
        (if (not (member$ ?e ?union)) then
            (bind ?union (create$ ?union ?e))
        )
    )
    (assert (vector (nombre union) (elementos $?union)))  ; Guardar unión
)

(defrule mostrar-union
    (vector (nombre union) (elementos $?union))
    =>
    (printout t "Union final: " ?union crlf)
)

(reset)
(run)
