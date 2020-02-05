/* Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not. */

memb(_, []):-
				false.

memb(X ,[H|T]):-
				H == X;
				memb(X, T).
