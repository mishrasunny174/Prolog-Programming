/*Prolog program to implement sumlist(List,Sum) so that Sum is the sum of a given list of
numbers List.*/
use_module(library(lists)).

sumlist(L, Sum):-
    sum_list(L, Sum).