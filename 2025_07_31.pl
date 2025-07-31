%element_at([X|_],1,X).

%element_at([_|T],N,X):- 
    %N>1,
    %N1 is N-1,
    %element_at(T,N1,X).
%...........................................................
/*sum_list([],0).		sum of the list
sum_list([H|T],Total) :- 
    sum_list(T, R),
    Total is H + R.*/
%..........................................................
%length_list([],0).
%length_list([_ |Tail],Length):-
   % length_list(Tail, TailLength),
 	%Length is TailLength + 1.

%........................................................

%index_of(Element,[H|_], 1).
%index_of(Element,[H|T],Index) :- 
    %index_of(Element, T,indexnew),
    %index is indexnew +1.

%...........................................................

%(5 > 3->   write('yes'); write('No')).

%.........................................................

minimum_in([H|T],Min):-
    minimum(T,MinTail),
    (H <= Mintail ->  Min = H; Min = Mintail).
