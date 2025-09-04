distance((X1,Y1),(X2,Y2),D):-
    DX is X2 - X1,
    DY is Y2 - Y1,
    D_square is DX * DX + DY * DY,
    D is sqrt(D_square).

square(N,Char):-
    square_rows(N,N,Char).

square_rows(0,_,_).
square_rows(Rows,Cols,Char):-
    square_row(Cols,Char),
    nl,
    Rows1 is Rows - 1,
    square_rows(Rows1,Cols,Char).


fibonacci(F,S):-
    sum_of_number(F,S).
    
sum_of_number(0,0).
sum_of_number(F,S):-
    F1 is F - 1,
    sum_of_number(F1,S1),
    S is S1 + F.

/*fibonacci(0,1).
fibonacci(1,1).
fibonacci(N,F):-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1,F1),
    fibonacci(N2,F2).
*/ 

mean(List,M):-
    sum_of_length(List,Sum,Length),
	Length > 0,
	M is Sum / Length.

sum_of_length([],0,0).
sum_of_length([H|T],Sum,Length):-
    sum_of_length(T, Sum1,Length1),
    Sum is Sum1 + H,
    Length is Length1 + 1.
  

% --- Define available colors ---
color(red).
color(green).
color(blue).

% --- Adjacency constraints (graph edges) ---
adjacent(a, b).
adjacent(a, c).
adjacent(b, c).
adjacent(b, d).
adjacent(c, d).
adjacent(c, e).
adjacent(d, e).
adjacent(d, f).
adjacent(e, f).

% --- Symmetry: adjacency is bidirectional ---
neighbor(X, Y) :- adjacent(X, Y).
neighbor(X, Y) :- adjacent(Y, X).

% --- CSP Rule: assign colors to regions ---
map_coloring([(Region, Color)|Rest]) :-
    color(Color),
    map_coloring(Rest),
    \+ (member((OtherRegion, Color), Rest), neighbor(Region, OtherRegion)).
map_coloring([]).


result([)
