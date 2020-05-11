/*Prolog program to implement maxlist(List,Max) so that Max is the greatest number in
the list of numbers List.*/
use_module(library(lists)).

maxlist(L,Max):-
    maxlist(L,L,Max).
maxlist([], Max):-
    write("Maximum number is: "),
    write(Max).
maxlist(L,[H|T], Max):-
    max_list(L,H) -> Max is H, maxlist([],Max);
    maxlist(T,T,Max).
