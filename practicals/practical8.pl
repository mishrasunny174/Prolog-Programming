/* Write a program in PROLOG to implement towerofhanoi(N) where N represents the number of
discs */
towerofhanoi(1, 1).

towerofhanoi(N, Res):-
				N1 is N-1,
				towerofhanoi(N1, Res1),
				Res is 2*Res1+1.
