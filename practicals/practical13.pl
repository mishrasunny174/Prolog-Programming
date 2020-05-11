/*Prolog program to implement two predicates evenlength(List) and oddlength(List) so
that they are true if their argument is a list of even or odd length respectively.*/

evenlength(L):-
    length(L,Len),
    X is mod(Len,2),
    X = 0 -> true;
    false.

oddlength(L):-
    length(L,Len),
    X is mod(Len,2),
    X = 0 -> false;
    true.
