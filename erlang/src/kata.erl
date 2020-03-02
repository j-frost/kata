-module(kata).

-export([countdown/2]).

-import(lists, [member/2]).

% NumList: six of these numbers: 1,2,3,4,5,6,7,8,9,10,25,50,75,100
% Target: number between 100-999
countdown(Target, NumList) ->
  case member(Target, NumList) of
    true -> Target
  end.
