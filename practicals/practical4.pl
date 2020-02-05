/* Write a program in PROLOG to implement generate_fib(N,T) where T represents the Nth term of
the fibonacci series. */
generate_fib(0, 0).
generate_fib(1, 1).

generate_fib(N, T):-
				N1 is N-1,
				N2 is N-2,
				generate_fib(N1, F1),
				generate_fib(N2, F2),
				T is F1 + F2.
