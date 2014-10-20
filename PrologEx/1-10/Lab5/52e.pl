rever([H|T],L1,L2):-rever(T,[H|L1],L2).
rever([ ],L,L).
