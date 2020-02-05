/* Write a Prolog program to implement GCD of two numbers. */
gcd(A, B, GCD):-
				(A mod B =:= 0) -> GCD is B;
				(	
								A2 is B,
								B2 is A mod B,
								gcd(A2, B2, GCD2),
								GCD is GCD2
				).
