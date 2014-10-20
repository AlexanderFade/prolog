sum([],0).
sum([H|T],SumX):-sum(T,SumY),SumX is SumY+H.
