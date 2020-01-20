gcd(Num1, Num2, GCD):-
    (Num1 mod Num2 =:= 0) -> 
        GCD is Num2;
    (
        Num3 is Num2,
        Num4 is Num1 mod Num2,
        gcd(Num3, Num4, GCD2),
        GCD is GCD2
    ).