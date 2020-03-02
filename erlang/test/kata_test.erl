-module(kata_test).

-import(kata, [countdown/2]).

-include_lib("eunit/include/eunit.hrl").

countdown_test_() ->
  [
    {"when given 100 as target and in list, will return 100", ?_assertEqual(countdown(100, [100]), "100")},
    {"when given 1 and 100; target 101; should return 1 + 100", ?_assertEqual(countdown(101, [1, 100]), "1 + 100")}
  ].
