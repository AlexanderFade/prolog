perestanovka([X,Y|T],[Y,X|T]):- X>Y,!.
perestanovka([X|T],[X|T1]):- perestanovka(T,T1).
sortirovka(L,L1):-perestanovka(L,LL),!,sortirovka(LL,L1).
sortirovka(L,L).
