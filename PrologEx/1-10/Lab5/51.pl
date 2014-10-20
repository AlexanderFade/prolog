write_list([]).
write_list([H|T]):-write(H),nl,write_list(T).
