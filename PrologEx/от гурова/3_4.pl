factr(N,FactN):-factr(N,FactN,1).
factr(N,FactN,P):-
N>0,
P1 is P*N,
N1 is N-1,
factr(N1,FactN,P1).
factr(0,FactN,FactN).
