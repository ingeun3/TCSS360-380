-module(lecture).

-export([pythagorean/2, calculateTotal/1, sumList/1, calculateTotalAll/1, mySum/1, mySumTail/1, fastSumList/1]).  
% -compile(export_all). %This is cheating!



pythagorean(A, B) ->
    math:sqrt(math:pow(A, 2) + math:pow(B, 2)).

calculateTotal({Cost, Tax}) -> Cost + Cost * (Tax).
sumList([]) -> 0;
sumList([H | T]) -> H + sumList(T).

fastSumList(L) -> fastSumList(L, 0).
fastSumList([], Acc) -> Acc; 
fastSumList([H | T], Acc) -> fastSumList(T, Acc + H).

calculateTotalAll([]) -> 0;
calculateTotalAll([H | T]) ->
    calculateTotal(H) + calculateTotalAll(T).

mySum(0) -> 0;
mySum(B) -> mySum(B - 1) + B.

mySumTail(B) -> mySumTail(B, 0).
mySumTail(0, Acc) -> Acc;
mySumTail(B, Acc) -> mySumTail(B - 1, Acc + B).