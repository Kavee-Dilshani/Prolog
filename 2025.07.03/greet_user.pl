greet_user :-
    write('What is your name?'), nl,
    read(Name),nl,
    write('What is your age?'), nl,
    read(Age),nl,
    write('Hello, '),write(Name),write('!'),nl,
    Age>=18,write('Your are a Adult, '),nl;
    write('Your are a child, ').

  