
-module(demo).
-export([times/2, double/1, square/1, message/1, greet/2, my_pow/2, mod_two/1,odd_even/1]).
-import(math, [pow/2]).
% this is a comment
times(Value, Times) -> Value * Times.
double(N) ->
Result = times(N, 2),
Result.
square(N) ->
pow(N, 2).
message(N) ->
io:format("Hello there ~s~n", [N]).
greet(DayType, Name) ->
if
DayType == weekday -> "Time to work " ++ Name;
DayType == weekend -> "Time to play " ++ Name;
true -> "Enjoy retirement " ++ Name
end.
% greet(weekday, Name) -> "Time to work " ++ Name;
% greet(weekend, Name) -> "Time to play " ++ Name;
% greet(_, Name) -> "Enjoy retirement " ++ Name.
% classify(N) when (N > 0) -> positive;
my_pow(_, 0) -> 1;
my_pow(N, Exp) -> N * my_pow(N, Exp - 1).
% checks if even or odd

mod_two(N) -> N rem 2.

odd_even(N) -> Result = mod_two(N),
if 
Result == 1 -> "Odd";
true -> "Even"
end.

  
                

