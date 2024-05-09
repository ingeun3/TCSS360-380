-module(lab2).

-export([isOrder/2, intersection/2, modEach/2, removeMods/2, calculateSugar/1, getnth/2]).  
% -compile(export_all). %This is cheating!


isOrder({d1, m1, y1},{d2,m2,y2}) when (y1 < y2) -> true;
isOrder({d1, m1, y1},{d2,m2,y2}) when (y1 < y2) and (m1 < m2) -> true;
isOrder({d1, m1, y1},{d2,m2,y2}) when (y1 < y2) and (m1 < m2) and (d1 < d2) -> true;
isOrder({_, _, _},{_,_,_}) -> false.

intersection({X1,_,_,_}, {X2,_}) when (X2 > X1) -> false;
intersection({X1,_,H,_}, {X2,_}) when (X2 < X1 - H) -> false;
intersection({_,Y1,_,_}, {_,Y2}) when (Y2 < Y1) -> false;
intersection({_,Y1,_,W}, {_,Y2}) when (Y2 > Y1 + W) -> false;
intersection({_,_,_,_}, {_,_}) -> true.

modEach([], _) -> [];
modEach([H|T], A) -> [H rem A | modEach([T], A)].

removeMods([],_) -> [];
removeMods([H|T], A) when (H rem A == 0) -> removeMods(T, A);
removeMods([H|T], A) -> [H | removeMods(T, A)].

calculateSugar([]) -> [];
calculateSugar([{F,G,R}|T]) -> [{F,G,G*R}|calculateSugar(T)].

getnth([], _) -> {error, no_such_element};
getnth([H|_],N) when (N == 0) -> H;
getnth([_|T], A) -> getnth(T, A - 1).

