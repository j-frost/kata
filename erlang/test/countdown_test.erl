-module(countdown_test).

-import(countdown, [run/2]).

-include_lib("eunit/include/eunit.hrl").

run_test_() ->
  [
    {"when given 100 as target and in list, will return 100", ?_assertEqual(run(100, [100]), "100")},
    {"when given 1 and 100; target 101; should return 1 + 100", ?_assertEqual(run(101, [1, 100]), "1 + 100")}
  ].
