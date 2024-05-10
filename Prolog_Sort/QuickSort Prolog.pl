quicksort([],[]).
quicksort([Pivot|RestoLista],Lordenada):-
    sublista_menores_maiores(RestoLista,Pivot,Sub1,Sub2),
    quicksort(Sub1,Sub1ordenada),
    quicksort(Sub2,Sub2ordenada),
    concatena(Sub1ordenada,[Pivot|Sub2ordenada],Lordenada).

sublista_menores_maiores([],_,[],[]).
sublista_menores_maiores([X|Y],N,[X|Z],W):-
    X =< N,
    sublista_menores_maiores(Y,N,Z,W).
sublista_menores_maiores([X|Y],N,Z,[X|W]):-
    X > N,
    sublista_menores_maiores(Y,N,Z,W).

concatena([],L,L).
concatena([X|Y],L,[X|R]):-
    concatena(Y,L,R).




