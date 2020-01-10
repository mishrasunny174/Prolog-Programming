palindrome(List):-
	reverse(List, ReversedList),
	compare(List, ReversedList).

compare([], []):-
	write('List is palindrome'), nl.

compare([Head | TailList1], [Head | TailList2]):-
	compare(TailList1, TailList2).

compare([HeadList1 | TailList1], [HeadList2 | TailList2]):-
	write('List in not a palindrome'), nl.