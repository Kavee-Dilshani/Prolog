/*count_even([],0):- !.

count_even([H|T],Count):-
	0 is H mod 2,
	!,
	count_even(T,CountNew),
	Count is CountNew + 1.

count_even([_|T],Count):-
	count(T,Count).*/

%-------------------------------------

/*result(([_,E|L],[E|M]):- !,
       result(L,M).
       
result(_,[]).*/

%---------- Cut operator-------------

/*grade(Marks,a) :- Marks >= 75.
grade(Marks,b) :- Marks >= 60.
grade(Marks,c) :- Marks >= 50.
grade(_,fail).*/

/*grade(Marks,a) :- Marks >= 75, !.
grade(Marks,b) :- Marks >= 60, !.
grade(Marks,c) :- Marks >= 50, !.
grade(_,fail).*/

%.....................................

/*max(X,Y,Z):- X >= Y , X >= Z , write(X) ,!.
max(X,Y,Z):- Y >= X , Y >= Z , write(Y) ,!.
max(X,Y,Z):- Z >= Y , Z >= X , write(Z) .*/


/*max(X,Y,Z) :- X >= Y,!.
max(_,Y,Y).

max_of_three(X,Y,Z,Max):-
    max(X,Y,TempMax),
    max(TempMax,Z,Max).*/

%.....................................

/*factorial(0, 1) :- !.

factorial(N,F):-
    N > 0,
    N1 is N - 1,
    factorial(N1,F1),
	F is N * F1.
*/

%...............................

/*gcd(X,0,X) :- X >0, !.

gcd(A,B,G):- 
    B >0,
    R is A mod B,
    gcd(B,R,G).
*/

%.............................

/*leap_year(Y):-
    0 is Y mod 4,!.  % Y mod 4 =:= 0 ->  we can ue like this
leap_year(_):- fail.*/

%..............................

%prime number



