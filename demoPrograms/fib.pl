fib(N, Res):-
	N > 2 -> (
			N1 is N-1,
			N2 is N-2,
			fib(N1, Res1),
			fib(N2, Res2),
			Res is Res1 + Res2
		);
	Res is 1.