dlina([],0).
dlina([_|T], L):-
dlina(T,L_T),
L is L_T+1.

