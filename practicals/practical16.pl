/*program in PROLOG to implement palindrome (L) which checks whether a list L is a
palindrome or not.*/

palindrome(L):-
    reverse(L,L1),
    checkPalindrome(L,L1).
checkPalindrome([],[]):-
    true.
checkPalindrome([H1|T1],[H2|T2]):-
    H1=H2-> checkPalindrome(T1,T2);
    false.
