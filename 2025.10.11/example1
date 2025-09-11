count_even([],0):- !.

count_even([H|T],Count):-
	0 is H mod 2,
	!,
	count_even(T,CountNew),
	Count is CountNew + 1.

count_even([_|T],Count):-
	count(T,Count).



