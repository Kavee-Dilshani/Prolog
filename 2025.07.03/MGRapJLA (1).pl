likes(alice,apple).
likes(bob,banana).
likes(charlie,apple).

%1. Who likes the same fruits as someone else?
same_taste(Person1,Person2) :- likes(Person1,Fruit),likes(Person2,Fruit),Person1 \= Person2.

%2.Chech if two people likes the same fruit but are the same person
same_taste_person(Person1,Person2) :- likes(Person1,Fruit),likes(Person2,Fruit),Person1 == Person2. 

%3.Fail when comparing with \== (not strictly identical)
different_individuals(Person1,Person2) :- Person1 \== Person2.

%4. Assign fruit to person