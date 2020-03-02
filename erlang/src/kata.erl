-module(kata).

-export([
  countdown/2,
  fizz_buzz/1
]).

-import(lists, [member/2]).

% NumList: six of these numbers: 1,2,3,4,5,6,7,8,9,10,25,50,75,100
% Target: number between 100-999
countdown(Target, NumList) ->
  case member(Target, NumList) of
    true -> Target
  end.

fizz_buzz(N) when is_integer(N) ->
  Result = if
             (N rem 3 =/= 0) and (N rem 5 =/= 0) ->
               N;
             (N rem 3 =:= 0) and (N rem 5 =/= 0) ->
               "fizz";
             (N rem 3 =/= 0) and (N rem 5 =:= 0) ->
               "buzz";
             (N rem 3 =:= 0) and (N rem 5 =:= 0) ->
               "fizzbuzz"
           end,
  Result.
