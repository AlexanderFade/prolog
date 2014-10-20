country('England','London').
country('Russia','Moscow').
country('France','Paris').
country('China','Pekin').
country('Japan','Tokyo').
country('Italy','Rome').
stol:-country(X,Y),write(Y),write('-'),write(X),write('\n'),fail.

