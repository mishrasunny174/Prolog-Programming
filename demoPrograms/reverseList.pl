reverse_list(InputList, OutputList):-
  reverse(InputList, [], OutputList).

reverse([], OutputList, OutputList).

reverse([Head|Tail], List1, List2):-
  reverse(Tail, [Head|List1], List2).
