# Str8ts Prolog
This is [Str8ts](https://www.janko.at/Raetsel/Straights/index.htm) solver using [prolog](https://pt.wikipedia.org/wiki/Prolog) programming language.

## Requirements
[prolog 8.4.2](https://www.swi-prolog.org/download/stable)

## Usage
- the grid is set stactically in the code
- the solver are only able to solve grids nXn
- for each chunk of lines that are to be changed, then the old must be removed and a new one is to be need
- empty cells must be represented as a unique variable. For convention, it is represented by _Xij_, where
    - X must be a capital letter
    - i is the row
    - j is the column
- static cells are represented by _-1_

## How to run
- there is a script in ./scripts/run.sh. You just need to run `./scripts/run.sh`
- scripts are meant to linux only

## Issues
- there still needs to be implemented a function that sorts a list. This is needed to check if a list contains elements that forms a sequence, i.e., given a list L = [3,5,4], to check if L has sequential elements