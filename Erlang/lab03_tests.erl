-module(lab03_tests).
-include_lib("eunit/include/eunit.hrl").

cuboidVolume_PosInt_test() -> 
    EXPECTED = 8,
    FUN = lab03: cuboidVolume(2,2),
    ?assertEqual(EXPECTED, FUN(2)).

cuboidVolume_NegInt_test() -> 
    EXPECTED = -8,
    FUN = lab03: cuboidVolume(-2,-2),
    ?assertEqual(EXPECTED, FUN(-2)).

cuboidVolume_Zero_test() -> 
    EXPECTED = 0,
    FUN = lab03: cuboidVolume(-2,-2),
    ?assertEqual(EXPECTED, FUN(0)).