% Prolog lab 1
brother(kyle, connor).
sister(kyle, kayla).
cousin(kyle, tony).
cousin(kyle, nicole).
cousin(kyle, john).
cousin(kyle, maddy).
parent(mom, connor).
parent(dad, connor).
parent(mom, kyle).
parent(dad, kyle).
parent(aunt, tony).
parent(aunt, nicole).
parent(uncle, tony).
parent(uncle, nicole).
parent(grandmom, mom).
parent(granddad, mom).

sibling(X, Y) :- parent(P, X), parent(P,Y), X \== Y.
grandparent(GP, GC) :- parent(GP, P), parent(P, GC).
auntuncle(AU, ME) :- cousin(ME, C), parent(AU, C)

% Prolog lab 2
% Number classification
classify(N, big) :- N > 100.
classify(N, medium) :- N >= 50, N =< 100.
classify(N, small) :- N < 50.

contains_big([H | _]) :- classify(H, big).
contains_big([_ | T]) :- contains_big(T).