/*program in PROLOG to implement remove_dup (L, R) where L denotes the list with some
duplicates and the list R denotes the list with duplicates removed.*/
use_module(library(lists)).

remove_dup(L,R):-
    list_to_set(L,R).