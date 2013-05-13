-module(make_change).
-export([get/1, get/2]).
-define(COINS, [25,10,5,1]).



get(Amount) ->
  get(Amount, []).



get(Amount, Change) when Amount >= 25 ->
  New_Change = Change ++ [25],
  Amount - 25,
  get(Amount - 25, New_Change);

get(Amount, Change) when Amount >= 10 ->
  New_Change = Change ++ [10],
  Amount - 10,
  get(Amount - 10, New_Change);

get(Amount, Change) when Amount >= 5 ->
  New_Change = Change ++ [5],
  Amount - 5,
  get(Amount - 5, New_Change);

get(Amount, Change) when Amount > 0 ->
  New_Change = Change ++ [1],
  get(Amount - 1, New_Change);

get(_, Change) ->
  Change.