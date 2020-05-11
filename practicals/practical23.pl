/*Program in PROLOG to implement merge (L1, L2, L3) where L1 is first ordered list and L2
is second ordered list and L3 represents the merged list.*/

merge(L1,L2,L3):-
    sort(L1,OL1),
    sort(L2,OL2),
    union(OL1,OL2,OL3),
    sort(OL3,L3).
