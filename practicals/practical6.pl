/* Write a Prolog program to implement power(Num, Pow, Ans) : where Num is raised to the
power Pow to get Ans. */
power(Num, 0, 1):-
	Num > 0.
power(0, Pow, 0):-
	Pow > 0.

power(Num, Pow, Res):-
	(Pow > 0) -> (
		Pow1 is Pow-1,
			power(Num, Pow1, Res1),
			Res is Num*Res1
		);
	(
		Pow1 is Pow+1,
		power(Num, Pow1, Res1),
		Res is Res1*1/Num
	).
