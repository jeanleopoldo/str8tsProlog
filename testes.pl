is_a_member(A, [A | _]).  
is_a_member(A, [_ | S]) :- is_a_member(A, S).

sequential([X]).
sequential([X, Y|Tail]) :- Z is X+1, is_a_member(Z,[Y|Tail]); J is X-1, is_a_member(J, [Y|Tail]).