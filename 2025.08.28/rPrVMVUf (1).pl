/*analyse_list(List) :-
List = [H|T],
write('This is the head of your list: '), write(H), nl,
write('This is the head of your list: '), write(T), nl.

analyse_list([]) :- write('This is an empty list.'),nl.*/

/*======================================================
 
membership(X,[X|_]).
membership(X,[_|T]) :- membership(X,T).

duplicate([],[]).
duplicate([H|T],Result):- membership(H,T),
    duplicate(T,Result).

duplicate([H|T],[H|Result]) :-
    \+ member(H|T),
    remove_duplicate(T,Result).
    
=========================================================*/
% replace(InputList, OldElem, NewElem, OutputList).

/*replace([], _, _, []).                         % Base case: empty list
replace([Old|T], Old, New, [New|R]) :-         % Case 1: head matches Old
    replace(T, Old, New, R).
replace([H|T], Old, New, [H|R]) :-             % Case 2: head does not match
    H \= Old,
    replace(T, Old, New, R).

=========================================================*/



