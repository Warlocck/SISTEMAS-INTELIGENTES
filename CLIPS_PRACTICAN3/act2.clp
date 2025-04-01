(defglobal ?*suma* = 0)

(deftemplate numero
    (slot valor (type NUMBER)))  ; Definir la estructura de numero con un slot "valor"

(defrule sumar-elementos
    ?fact <- (numero (valor ?x))
    =>
    (bind ?*suma* (+ ?*suma* ?x))
    (retract ?fact))

(defrule mostrar-suma
    (not (numero (valor ?)))  ; Se ejecuta cuando no quedan números
    =>
    (printout t "La suma total es: " ?*suma* crlf))

; Datos de prueba
(deffacts datos-numeros
    (numero (valor 8))
    (numero (valor 3))
    (numero (valor 10))
    (numero (valor 2))
    (numero (valor 5)))
