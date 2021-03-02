/* here you write your code for Task 2 */

myDelete(_, [], []).
myDelete(X, [X|T], L) :- myDelete(X, T, L).
myDelete(X, [H|T1], [H|T2]) :- dif(X, H), myDelete(X, T1, T2).
view(V, L):-
write('test2.txt'), nl,
read(File),
open(File, write, Stream),
myDelete(V, L, X), write(Stream, X),
fail,
close(Stream).

