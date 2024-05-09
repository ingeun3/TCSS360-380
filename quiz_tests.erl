-module(quiz_tests).

-include_lib("eunit/include/eunit.hrl").

-compile(export_all).

myDiv_test() ->
    F = quiz:myDiv(integer),
    ?assertEqual(3, F(7,2)).
