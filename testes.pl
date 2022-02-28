sequential([X]).
sequential([X, Y|Tail]) :- Y is X+1, sequential([Y|Tail]).

R =[1,2].


solve(X) :- sequential(R).