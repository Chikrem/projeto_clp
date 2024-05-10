% 1°) Maior de uma Lista
maior_lista([X],X).
maior_lista([C|L],X) :- maior_lista(L,A), (A > C -> X = A; X = C).

% 2°) Listas disjuntas
disjuntas(L1,L2):- not(elemento_comum(L1,L2)).

% 3°) União de 2 listas
uniao([X|Y],Z,[X|W]) :- append(Y,Z,W).

% 4°) Ultimo da lista
ultimo([X],X).
ultimo([Y|L],X) :- ultimo(L,X).

%Auxiliares -------------------------------------
pertence(X,[X|L]).
pertence(X,[Y|L]) :- pertence(X,L).

elemento_comum(L1,L2) :- pertence(X,L1),pertence(X,L2).

