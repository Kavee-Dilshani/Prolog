%Gender facts
male(john).
male(peter).
male(michael).
male(david).
female(mary).
female(susan).
female(lisa).
female(emma).

%Parent facts
parent(john,mary).
parent(john,peter).
parent(mary,lisa).
parent(mary,david).
parent(peter,emma).
parent(susan,john).
parent(michael,john).


father(Person1,Person2) :- male(Person1),parent(Person1,Person2).
mother(Person1,Person2) :- female(Person1),parent(Person1,Person2).

grandfather(X,Y) :- male(X),parent(X,Z),parent(Z,Y).
grandmother(P,Q) :- male(P),parent(P,R),parent(R,Q).

%sibling(X,Y) :- parent(Z,X), parent(Z,Y), X \= Y . %/= -> not equal\
sibling(X,Y) :- parent(Z,X), parent(Z,Y).
brother(X,Y) :- male(X),sibling(x,Y).
sister(X,Y) :- female(X),sibling(x,Y).

uncle(X,Y) :- male(X),parent(Z,Y),siblings(X,Z).
aunt(X,Y) :- female(X), parent(Z,Y),siblings(X,Z).

%grandchild(X,Y) :- 
