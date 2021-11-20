certificate(Workshop_List) :-
    credits(Workshop_List, C). %if dates and credits is true then true

dates([]).
dates([H | T]) :-
    conflict(H, T),
    write(H),
    dates(T).


%check the date
conflict([NumA, DayA, CredA, StartA, StopA], []) :- write('yay'), nl.

conflict([NumA, DayA, CredA, StartA, StopA], [[NumB, DayB, CredB, StartB, StopB] | T]) :-
    DayA \== DayB, write('wow'), nl, conflict([NumA, DayA, CredA, StartA, StopA], T).

credits([ ], 0).
credits([H | T], Sum) :-
    credits(T, TSum),
    nth0(2, H, E),
    Sum is E + TSum.