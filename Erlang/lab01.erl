% Lab 1
% Paul Schmidt, Ingeun Hwang, Andy Comfortss
-module(lab01).
-export([pythagorean/2, isSame/2, parity/1, mealType/1, myAdd/2, mySum/1]).
-import(math, [pow/2, sqrt/1]).

pythagorean(N, M) -> Result = pow(N, 2) + pow(M, 2),
        sqrt(Result).

isSame(N, M) -> N =:= M.

parity(N) when(N rem 2 == 0) -> even;
parity(_) -> odd.

mealType(N) when(N == 1) -> breakfast;
mealType(N) when(N == 2) -> lunch;
mealType(N) when(N == 3) -> dinner;
mealType(N) when(N == 4) -> appetizer;
mealType(N) when(N == 5) -> dessert;
mealType(_) -> no_match.

myAdd(M, N) when(N < 0) -> (-1) + myAdd(M, N+1);
myAdd(M, N) when(N == 0) -> M;
myAdd(M, N) -> 1 + myAdd(M, N-1). 

mySum(N) when(N == 1) -> 1;
mySum(N) when(N > 1) -> N + mySum(N - 1);
mySum(_) -> 0.