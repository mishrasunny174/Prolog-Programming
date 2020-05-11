/*prolog program to implement insert_nth(I, N, L, R) that inserts an item I into Nth
position of list L to generate a list R.*/

insert_nth(I, N, [H|T], R):-
    N = 1 -> append([I], [H|T], R);
    N1 is N-1,
    insert_nth(I,N1,T,R1),
    append([H],R1,R).
