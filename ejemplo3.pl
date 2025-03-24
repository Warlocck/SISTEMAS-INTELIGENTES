% Base de conocimiento: carreras y sus caracteristicas
carrera(ingenieria_sistemas) :- habilidad(matematicas), interes(tecnologia), personalidad(analitico).
carrera(medicina) :- habilidad(biologia), interes(salud), personalidad(empatico).
carrera(derecho) :- habilidad(argumentacion), interes(justicia), personalidad(critico).
carrera(arquitectura) :- habilidad(creatividad), interes(disenio), personalidad(innovador).
carrera(psicologia) :- habilidad(escucha), interes(salud), personalidad(empatico).
carrera(administracion) :- habilidad(liderazgo), interes(negocios), personalidad(extrovertido).
carrera(ingenieria_civil) :- habilidad(matematicas), interes(construccion), personalidad(disciplinado).
carrera(economia) :- habilidad(analisis), interes(negocios), personalidad(critico).
carrera(contabilidad) :- habilidad(orden), interes(finanzas), personalidad(meticuloso).
carrera(marketing) :- habilidad(comunicacion), interes(ventas), personalidad(extrovertido).

preguntar(Pregunta) :- 
    write(Pregunta), 
    write(' (si/no): '), 
    read(Respuesta), 
    Respuesta = si.

habilidad(matematicas) :- preguntar('Te gustan las matematicas?').
habilidad(biologia) :- preguntar('Te interesa la biologia?').
habilidad(argumentacion) :- preguntar('Te gusta debatir y argumentar?').
habilidad(creatividad) :- preguntar('Te consideras creativo?').
habilidad(escucha) :- preguntar('Eres buen oyente?').
habilidad(liderazgo) :- preguntar('Te gusta liderar equipos?').
habilidad(analisis) :- preguntar('Te gusta analizar datos?').
habilidad(orden) :- preguntar('Eres ordenado y meticuloso?').
habilidad(comunicacion) :- preguntar('Te gusta comunicar ideas?').

interes(tecnologia) :- preguntar('Te interesa la tecnologia?').
interes(salud) :- preguntar('Te interesa el bienestar y la salud?').
interes(justicia) :- preguntar('Te interesa la justicia y el derecho?').
interes(disenio) :- preguntar('Te interesa el diseno y la arquitectura?').
interes(negocios) :- preguntar('Te interesa el mundo de los negocios?').
interes(construccion) :- preguntar('Te interesa la construccion e ingenieria civil?').
interes(finanzas) :- preguntar('Te interesa el mundo financiero y la contabilidad?').
interes(ventas) :- preguntar('Te gusta la publicidad y el marketing?').

personalidad(analitico) :- preguntar('Eres analitico?').
personalidad(empatico) :- preguntar('Te pones en el lugar de los demas?').
personalidad(critico) :- preguntar('Te gusta cuestionar y analizar?').
personalidad(innovador) :- preguntar('Te gusta innovar y crear cosas nuevas?').
personalidad(extrovertido) :- preguntar('Disfrutas socializar y conocer gente nueva?').
personalidad(disciplinado) :- preguntar('Eres una persona disciplinada y organizada?').
personalidad(meticuloso) :- preguntar('Te fijas en los detalles?').

recomendar :- 
    carrera(Carrera), 
    write('La carrera recomendada para ti es: '), 
    write(Carrera), nl.
