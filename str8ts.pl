% all cells in row/col must be different

diff([X]).
diff([X,Y|Tail]) :- n(X), n(Y), X \== Y, diff([X|Tail]), diff([Y|Tail]).

% check if an element is part of the list
is_a_member(A, [A | _]).  
is_a_member(A, [_ | S]) :- is_a_member(A, S).

% check if a list has sequential elements
sequential([X]).
sequential([X, Y|Tail]) :- Z is X+1, is_a_member(Z,[Y|Tail]); J is X-1, is_a_member(J, [Y|Tail]).

% 'function' to print grid
print(A,B,C,D,E,F) :- write(' '), write(A),
                      write(' '), write(B),
                      write(' '), write(C),
                      write(' '), write(D),
                      write(' '), write(E),
                      write(' '), write(F), nl.

% defining possible numbers to be selected
n(1).
n(2).
n(3).
n(4).
n(5).
n(6).
max(6). 

solve(Tab) :-
    Grid = 
    [   % 1c   2c   3c   4c   5c   6c
        [ -1, X12, X13,  -1,  -1,  -1], % 1st row
        [ -1, X22, X23, X24,   5, X26], % 2nd row
        [ -1, X32,   1, X34, X35, X36], % 3rd row
        [  4, X42, X43, X44, X45,  -1], % 4th row
        [X51,   6,   5, X54, X55,  -1], % 5th row
        [ -1,  -1,  -1, X64,   1,  -1]  % 6th row
    ],
    
    % row
    R1 = [X12,X13],
    diff([X12,X13]),
    sequential(R1),

    R2 = [X22,X23,X24,5,X26],
    diff([X22,X23,X24,5,X26]),
    sequential(R2),

    R3 = [X32,1,X34,X35,X36],
    diff([X32,1,X34,X35,X36]),
    sequential(R3),

    R4 = [4,X42,X43,X44,X45],
    diff(R4),
    sequential(R4),

    R5 = [X51,6,5,X54,X55],
    diff(R5),
    sequential(R5),
    
    R6 = [X64,1],
    diff(R6),
    sequential(R6),

    % col
    C1 = [4,X51],
    diff([4,X51]),
    sequential(C1),

    C2 = [X12,X22,X32,X42,6],
    diff(C2),
    sequential(C2),

    C3 = [X13,X23,1,X43,5],
    diff(C3),
    sequential(C3),

    C4 = [X24,X34,X44,X54,X64],
    diff(C4),
    sequential(C4),

    C5 = [5,X35,X45,X55,1],
    diff(C5),
    sequential(C5),

    C6 = [X26,X36],
    diff(C6),
    sequential(C6),
    
    
    print(X11,X12,X13,X14,X15,X16),
    print(X21,X22,X23,X24,X25,X26),
    print(X31,X32,X33,X34,X35,X36),
    print(X41,X42,X43,X44,X45,X46),
    print(X51,X52,X53,X54,X55,X56),
    print(X61,X62,X63,X64,X65,X66).