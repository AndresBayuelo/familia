%hechos
padrede(elizabeth,andres).
padrede(ana,felipe).
padrede(edison,felipe).
padrede(ana,valentina).
padrede(edison,valentina).
hijode(ana,jose).
hijode(elizabeth,jose).
abuelode(jose,andres).
abuelode(jose,felipe).
abuelode(jose,valentina).

%reglas
hermanode(A,B) :- padrede(C,A), padrede(C,B),  A \== B.
hermanode(A,B) :- hijode(A,C), hijode(B,C),  A \== B.
primode(A,B) :- padrede(C,A), padrede(D,B), hermanode(C,D), A \== B.
tiode(A,B) :- padrede(C,B), hermanode(C,A).
familiade(A,B) :- padrede(A,B).
familiade(A,B) :- padrede(B,A).
familiade(A,B) :- hijode(A,B).
familiade(A,B) :- primode(A,B).
familiade(A,B) :- tiode(A,B).
familiade(A,B) :- tiode(B,A).
escasado(A) :- padrede(A,C), padrede(B,C), A \== B.
esfeliz(A) :- not(escasado(A)).
