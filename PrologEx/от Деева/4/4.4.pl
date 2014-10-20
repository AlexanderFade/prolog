country('England','London').
country('Russia','Moscow').
country('France','Paris').
country('China','Pekin').
country('Japan','Tokyo').
country('Italy','Rome').

capital:-country(_,X),write(X),write(' '),fail.
