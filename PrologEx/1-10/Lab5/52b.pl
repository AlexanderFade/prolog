prinadlezh(X,[X|_]).
prinadlezh(X,[_|T]) :- prinadlezh(X,T).
