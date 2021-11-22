%Kyle Evangelisto

%main entry point checks to see if the credits are satisfied and check the dates
certificate(List) :-
    credits(List, Total),
    Total >= 5, dates(List).

%sum the credits from each list in the master list recursively
credits([ ], 0).
credits([[_, _, E | _ ] | T], Sum) :-
    credits(T, TSum),
    Sum is E + TSum.

%iterate through all of the dates and check to see if there are any conflicts
dates([]).
dates([H | T]) :-
    conflict(H, T),
    dates(T).

%check the date
conflict([_, _, _, _, _], []).

%check the dates in question are not the same
conflict([NumA, DayA, CredA, StartA, StopA], [[_, DayB, _, _, _] | T]) :-
    DayA \== DayB, conflict([NumA, DayA, CredA, StartA, StopA], T).

%check the start and stop times do not violate each other
conflict([NumA, DayA, CredA, StartA, StopA], [[_, _, _, StartB, StopB] | T]) :-
    StartA > StopB, StartB > StopA, conflict([NumA, DayA, CredA, StartA, StopA], T).

%check the start and stop times do not violare each other
conflict([NumA, DayA, CredA, StartA, StopA], [[_, _, _, _, StopB] | T]) :-
    StartA > StopB, conflict([NumA, DayA, CredA, StartA, StopA], T).

%check the start and stop times do not violate each other
conflict([NumA, DayA, CredA, StartA, StopA], [[_, _, _, StartB, _] | T]) :-
    StartB > StopA, conflict([NumA, DayA, CredA, StartA, StopA], T).
