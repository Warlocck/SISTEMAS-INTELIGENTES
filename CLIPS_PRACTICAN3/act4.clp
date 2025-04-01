(clear)

(deftemplate Pais
    (slot nombre (type STRING))    ; Nombre como cadena entre comillas
    (multislot bandera (type SYMBOL))) ; Colores como símbolos SIN comillas

(deftemplate BusquedaColores
    (multislot colores (type SYMBOL)))

(deffunction contiene-colores (?requeridos ?disponibles)
    (foreach ?color ?requeridos
        (if (not (member$ ?color ?disponibles))
            then (return FALSE)))
    (return TRUE))

(deffacts datos-iniciales
    (Pais (nombre "Alemania") (bandera Negro Rojo Amarillo))
    (Pais (nombre "Espania") (bandera Rojo Amarillo))
    (Pais (nombre "Francia") (bandera Azul Blanco Rojo))
    (BusquedaColores (colores Rojo Amarillo)))

(defrule buscar-paises
    (BusquedaColores (colores $?colores-busqueda))
    (Pais (nombre ?n) (bandera $?b))
    (test (contiene-colores ?colores-busqueda ?b))
    =>
    (printout t "Pais encontrado: " ?n crlf))

(reset)
(run)
