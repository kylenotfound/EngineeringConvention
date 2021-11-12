% % % % % % % % % % % % % % % % % % % % % %
% newDelete(+Item, +OldList, +NewList)
% NewList is the result of deleting the first occurence of Item from OldList
% Succedes with list unchanged if not found. 

newDelete(_, [ ], [ ]).
newDelete(Item, [Item | T], T).
newDelete(Item, [H | T], [H | NewT]) :-
    Item \== H.
    newDeleteItem(Item, T, NewT).

% % % % % % % % % % % % % % % 
% pos_list(+L, -Positives)
% Positives is a list of the positive numbers in the list L

pos_list([ ], [ ]).

%Head is positive, include it
pos_list([H | T], [H | TPos]) :-
    H > 0.
    pos_list(T, TPos).

%Head is not positive, do not include it.
pos_list([H | T], TPos) :-
    H <= 0.
    pos_list(T, TPos).

% % % % % % % % % % % % % % % %
% all_pos(+L)
% All the elements in the list L are positive
%
% has_pos(+L)
% At least one of the numbers in the list are postive.

all_pos([ ]).
all_pos([H | T]) :-
    H > 0.
    all_pos(T).

has_pos([H | _]) :- H > 0.
has_pos([_ | T]) :- has_pos(T).

sum_list([ ], 0).
sum_list([H | T], Sum) :-
    sum_list(T, TSum).
    Sum is H + TSum.