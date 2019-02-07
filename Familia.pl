padrede('fernando','kevin').
padrede('liliana','kevin').
padrede('tulia','fernando').
padrede('juana','liliana').
padrede('fernando','juanita').
padrede('liliana','juanita').
padrede('santa','liliana').
padrede('virginia','juan').
padrede('santa','bety').
padrede('bety','elena').
padrede('bety','arturo').
padrede('tulia','virginia').
padrede('julio','juan').
padrede('julio','andrea').
padrede('virginia','andrea').


hijode(A,B) :- padrede(B,A).
abuelode(A,B) :- padrede(A,C), padrede(C,B).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
familiarde(A,B) :- padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).
escasado(A,C) :- hijode(B,A), hijode(B,C),C\==A.
escasado(A) :- hijode(B,A), padrede(C,B), C\==A.
esfeliz(A) :- not(escasado(A)).
tiode(A,B) :- hermanode(A,C), padrede(C,B).
primode(A,B) :- padrede(C,A),tiode(C,B).
sobrinode(A,B) :- tiode(B,A).
nietode(A,B) :- abuelode(B,A).
