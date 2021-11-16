certificate(Workshop_List) :-
    dates(), credits(). %if dates and credits is true then true

dates([H | T]) :-

credits([H | T], Sum) :-
    credits(T, TSum).
    Sum is H + TSum.


nth0_2(Row, Column, List, Element) :-
    nth0(Row, List, SubList),
    nth0(Column, SubList, Element).


first([E|,_,_,_,_], E).
second([_,E|,_,_,_], E).
third([_,_,E|,_,_], E).
fourth([_,_,_,E|,_], E).
fifth([_,_,_,_,E|], E).