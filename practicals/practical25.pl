/* Write a program to implement semantic net (ATN/RTN) */

is_a(tom, male).
is_a(jones, male).
is_a(susan, female).
is_s(penny, female).

parent(penny, susan).
parent(penny, tom).
parent(jones, susan).
parent(jones, tom).

married(jones, penny).


gender(Name):- 
    is_a(Name, X),
    format("~w is ~w.~n", [Name, X]).

father(Name):-
    parent(X, Name), is_a(X, male),
    format("~w's father is ~w.~n", [Name, X]).