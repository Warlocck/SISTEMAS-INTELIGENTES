(deftemplate numero (slot valor))

(defrule hallar-minimo
    (declare (salience 10))
    (numero (valor ?x))
    (not (numero (valor ?y&:(< ?y ?x))))
    =>
    (printout t "El minimo es: " ?x crlf))

; Datos de prueba
(deffacts datos-minimo
    (numero (valor 8))
    (numero (valor 3))
    (numero (valor 10))
    (numero (valor 2))
    (numero (valor 5)))

(reset)
(run)