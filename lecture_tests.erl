
-module(lecture_tests).
-include_lib("eunit/include/eunit.hrl").
%********************************************************
isEven_1_test() ->
false = lecture:isEven(3).
isEven_2_test() ->
true = lecture:isEven(2).
%********************************************************
seq_1_test() ->
[1, 2, 3, 4, 5] = lists:seq(1, 5).
%********************************************************
area_bad_test() ->
R = 5,
Expected = R * R * math:pi(),
Expected = lecture:area(R).
% area_bad_for_a_different_reason_test() ->
% R = 5,
% Expected = 78.53981,
% Expected = lecture:area(R).
area_good_test() ->
R = 5,
Expected = 78.53981,
true = abs(lecture:area(R) - Expected) < 0.001.
area_not_great_by_my_self_test() ->
Expected = math:pi(),
Expected = lecture:area(1).
%********************************************************
%Examples with the Unit Tests API
double_1_test() ->
?assertEqual(10, lecture:double(5)).
% double_2_test() ->
% ?assertEqual(10, lecture:double(2)).
%********************************************************
