min_max_list([],99999,0).
min_max_list([H|T],Min,Max):- min_max_list(T,X,Y), Min is min(H,X), Max is max(H,Y).
min1([H|T],Min,Max):- min_max_list(T,X,X), Min is min(H,X), Max is max(H,X).
