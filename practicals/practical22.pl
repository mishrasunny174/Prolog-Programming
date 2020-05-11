/*Program in PROLOG to implement delete_all (X, L, R) where X denotes the element
whose all occurrences has to be deleted from list L to obtain list R.*/

delete_all(X,L,R):-
    delete(L,X,R).
