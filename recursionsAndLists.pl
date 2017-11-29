/*Konstantin Urbanides 3BHIF

/*Definieren des Heads und des Tails*/
head([Head | _], Head).
tail([_ | Tail], Tail).

/* prepend/3 fügt ein Element E am Anfang einer Liste L ein*/
/*prepend([b,c,d,e], a, X) Ergebnis: X = [a,b,c,d,e]*/ 
prepend([], E, [E]).
prepend([Head|Tail], E, [E|[Head|Tail]]).

/* addElement/3 fügt ein Element E am Ende einer Liste L ein*/
/*addElement([a,b,c,d], e, X). Ergebnis: X = [a,b,c,d,e]*/
addElement([], E, [E]).
addElement([Head|Tail], E, [Head|ExtendedTail]) :- addElement(Tail, E, ExtendedTail).

/*hasLenth/2 berechnet die Länge einer Liste*/
/*hasLength([a,b,c,d,e], X). Ergebnis: X = 5*/
hasLength([], 0).
hasLength([Head|Tail],Length) :- hasLength(Tail,X),Length is 1 + X.

/*remove/3 entfernt ein Element E aus einer Liste L*/
/*remove([a,b,c,d,e], c, X). Ergebnis: X = [a,b,d,e]*/
remove([E|Tail], E, Tail).
remove([Head|Tail], E, [Head|ReducedTail]) :- remove(Tail, E, ReducedTail).
