/*
The logic behind palindrom i am using is this.
1) Take a list
2) create a second reversed list of the original list
3) compare these two list's if they are same then it's a palindrome otherwise not!
*/
palindrome(List):-
	reverse(List, ReversedList),
	compare(List, ReversedList).

/*
This predicate is the base case for palindrome check, if there are two empty lists they are already a 
palindrome we will use this fact to our benifit to define the base case for the recursion of 
palindrome check.
*/
compare([], []):-
	write('List is palindrome'), nl.

/*
This predicate will be checked only when we have same values for Head and hence 
we can check each value on the head until the list is empty, if this predicate doesn't match the control will
go to last predicate which meand the value of head is different is original list and reversed list so
the list is not palindrome 
*/
compare([Head | TailList1], [Head | TailList2]):-
	compare(TailList1, TailList2).

/* 
_ are called anonymous variable we can use this to represent variable that we do not care about 
here i used that to suppress a warning related to unused variables
*/
compare([ _ | _ ], [ _ | _ ]):-
	write('List in not a palindrome'), nl.