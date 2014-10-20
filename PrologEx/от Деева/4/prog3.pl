a:-write(1).
a:-write(2).
b(X):-a,X='еще'.
c:-a.
d:-a,fail.
