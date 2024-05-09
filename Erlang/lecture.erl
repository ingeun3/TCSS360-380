
-module(lecture).
-import(math, [pi/0]).
-compile(export_all).
area(R) ->
R * R * pi().
circ(R) ->
2 * R * pi().
diam(R) ->
2 * R.
double(X) -> X * 2.
isEven(X) -> X rem 2 == 0.
higher(F, X) -> F(X).
mymap([], _) -> [];
mymap([H | T], F) -> [ F(H) | mymap(T, F)].
myfilter([], _) -> [];
myfilter([H | T], Pred) ->
case Pred(H) of
true -> [H | myfilter(T, Pred)];
false -> myfilter(T, Pred)
end.
myreduce(_, Acc, []) -> Acc;
myreduce(F, Acc, [H | T]) -> myreduce(F, F(Acc, H), T).
myreturn(X) -> fun (Y) -> X * Y end.
