-module(quiz).
-compile(export_all).

generate(A,B,_) when(A > B) -> [];
generate(A,B,C) -> [A | generate(A + C, B, C)].

mymax([]) -> empty_list;
mymax([H | T]) -> mymax([H | T] , H).
mymax([], M) -> M;
mymax([H | T], M) when (H > M) -> mymax(T, H);
mymax([ _ | T], M) -> mymax(T, M).

getnth([],_) -> {error, no_such_element};
getnth([H|_], 1) -> H;
getnth([_|T], N) -> getnth(T, N-1).

myDiv(integer) -> fun (X,Y) -> X div Y end;
myDiv(float) -> fun (X, Y) -> X / Y end.

cuboidVolume(L, W) -> fun (H) -> L * W * H end.

mapRedue(F1, F2, Acc, L) -> 
    MapList = lists:map(F1, L),
    lists:fold1(F2, Acc, MapList).


