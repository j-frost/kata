-module(kata_test).

-import(kata, [countdown/2, fizz_buzz/1]).

-include_lib("eunit/include/eunit.hrl").

countdown_test_ignore() ->
  [
    {"when given 100 as target and in list, will return 100", ?_assertEqual("100", countdown(100, [100]))},
    {"when given 1 and 100; target 101; should return 1 + 100", ?_assertEqual("1 + 100", countdown(101, [1, 100]))}
  ].

fizz_buzz_test_() ->
  [
    ?_assertEqual(1, fizz_buzz(1)),
    ?_assertEqual(2, fizz_buzz(2)),
    ?_assertEqual("fizz", fizz_buzz(3)),
    ?_assertEqual(4, fizz_buzz(4)),
    ?_assertEqual("buzz", fizz_buzz(5)),
    ?_assertEqual("fizzbuzz", fizz_buzz(15)),
    ?_assertError(_, fizz_buzz(0.1)),
    ?_assertError(_, fizz_buzz(foo)),
    ?_assertError(_, fizz_buzz(<<42>>)),
    ?_assertError(_, fizz_buzz("foo"))
  ].
