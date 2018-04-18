/* Identificar Animales.  

    corre el programa usando  ?- empezar.     */

empezar :- hipotesis(Animal),
      write('Creo que el animal es: '),
      write(Animal),
      nl,
      undo.

/* hypotheses to be tested */
hipotesis(chita)   :- chita, !.
hipotesis(tigre)     :- tigre, !.
hipotesis(jirafa)   :- jirafa, !.
hipotesis(cebra)     :- cebra, !.
hipotesis(avestruz)   :- avestruz, !.
hipotesis(pingüino)   :- pingüino, !.
hipotesis(albatros) :- albatros, !.
hipotesis(desconocido).             /* no se encontró anilam */

/* Reglas para identificar animales */
chita :- mamifero, 
           carnivoro, 
           verificar(tiene_color_atigrado),
           verificar(tiene_manchas_oscuras).
tigre :- mamifero,  
         carnivoro,
         verificar(tiene_color_atigrado), 
         verificar(tiene_rayas_oscuras).
jirafa :- ungulado, 
           verificar(tiene_cuello_largo), 
           verificar(tiene_piernas_largas).
cebra :- ungulado,  
         verificar(tiene_rayas_oscuras).

avestruz :- pichón,  
           verificar(no_puede_volar), 
           verificar(tiene_cuello_largo).
pingüino :- pichón, 
           verificar(no_puede_volar), 
           verificar(puede_nadar),
           verificar(es_blanco_y_negro).
albatros :- pichón,
             verificar(aparece_en_la_historia_Ancient_Mariner),
             verificar(vuela_bien).

/* Reglas de clasificacion */
mamifero    :- verificar(tiene_pelaje), !.
mamifero    :- verificar(puede_dar_leche).
pichón      :- verificar(tiene_plumas), !.
pichón      :- verificar(puede_volar), 
             verificar(deja_huevos).
carnivoro :- verificar(come_carne), !.
carnivoro :- verificar(tiene_dientes_punteagudos), 
             verificar(tiene_garras),
             verificar(tiene_ojos_hacia_adelante).
ungulado :- mamifero, 
            verificar(tiene_pezuñas), !.
ungulado :- mamifero, 
            verificar(mastica).

/* Hacer preguntas */
ask(Question) :-
    write('El animal tiene el siguiente atributo: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == si ; Response == s ; Response == ci ; Response == zy)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* Verificar */
verificar(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* Deshacer */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.