maxmin(X,[X],_):-!.
maxmin(H,[H|Tail],Z):-maxmin(Extr,Tail,Z),Z*H>Z*Extr,!.
maxmin(Extr,[_|Tail],Z):-maxmin(Extr,Tail,Z).


main([H|T],Min,Max):- maxmin(T,X,Y), Min is min(H,X), Max is max(H,Y),!.
main([],_,_):-write('Пустой список!'),nl,!.

