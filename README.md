# Str8ts Prolog
This is [Str8ts](https://www.janko.at/Raetsel/Straights/index.htm) solver using [prolog](https://pt.wikipedia.org/wiki/Prolog) programming language.

## Requirements
[prolog 8.4.2](https://www.swi-prolog.org/download/stable)

## Usage
- the grid is set stactically in the code
- the solver are only able to solve grids nXn
- for each chunk - _list_ - of lines that are to be changed
    - the old must be removed
    - a new one is to be need
    - the rules must be set to this new chunk of line
        - diff(Chunk)
        - sort(Chunk) - this one needs to be implemented
        - sequential(Chunk)
- empty cells must be represented as a unique variable. For convention, it is represented by _Xij_, where
    - X must be a capital letter
    - i is the row
    - j is the column
- static cells are represented by _-1_ (although it can assume any integer _k_ such as k <= -1 _or_ k > n)
- currently, it only finds sequence from 1 to _n_, with _n_ being the size of the grid (in this case, 6). It can be changed adding/removing `n(y).`, where y is the number one want to add. It is highly recommended that the range of numbers to be at least 1 to _n_

## How to run
- there is a script in ./scripts/run.sh. You just need to run `./scripts/run.sh`
- in the consele, type `solve(X).`
- scripts are meant to linux only

## Output
- the result will be shown in the console of whatever (_IDE, terminal, etc._), you are executing