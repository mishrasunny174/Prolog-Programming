/*Program in PROLOG to implement sublist(S, L) that checks whether the list S is the
sublist of list L or not. (Check for sequence or the part in the same order).*/

isSublist(S,[H|T]):-
    prefix(S,[H|T]) -> true;
    isSublist(S,T).
isSublist(_,[]):-
    false.