/*Write a PROLOG program that will take grammar rules in the following format:
NT -> (NT | T)*
Where NT is any nonterminal, T is any terminal and Kleene star (*) signifies any number of
repetitions, and generate the corresponding top-down parser, that is:
sentence -> noun-phrase, verb-phrase
determiner -> [the]
will generate the following:
sentence (I, O) :- noun-phrase(I,R), verb-phrase (R,O).
determiner ([the|X], X) :- !.
*/

noun([dog|X],X).
noun([cat|X],X).
noun([mouse|X],X).
verb([ate|X],X).
verb([chase|X],X).
adjective([brown|X],X).
adjective([lazy|X],X).
determiner([the|X],X).

nounphrase(NP,X):-
    (determiner(NP,Noun),
    noun(Noun,X));
    noun(NP, X). 

nounphrase(NP,X):-
    determiner(NP,R),
    adjective(R,S2),
    noun(S2,X).

verphrase(VP,X):-
    verb(VP,R),
    nounphrase(R,X).

sentence(I, X):-
    nounphrase(I,R),
    verphrase(R, X).
