%Faits
homme(pierre).
homme(marc).
homme(paul).
homme(jacques).

femme(marie).
femme(sophie).
femme(julie).

parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).
parent(jacques, marc).
parent(julie, sophie).


%Règles
pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).

grand_parent(X, Z) :- parent(X, Y), parent(Y, Z).

frere_et_soeur(X, Y) :- parent(Z, X), parent(Z, Y).

oncle_et_tante(X, Y) :- parent(Z, Y), frere_et_soeur(X, Z).

cousin(X, Y) :- parent(Z, X), frere_et_soeur(Z, W), parent(W, Y).

longueur([], 0).
longueur([_|Queue], N) :- longueur(Queue, M), N is M + 1.
