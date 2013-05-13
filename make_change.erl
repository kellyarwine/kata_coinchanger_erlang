-module(make_change).
-export([get/1, get/3]).
-define(COINS, [25,10,5,1]).

get(Amount) ->
  get(Amount, [], ?COINS).

get(Amount, Change, [Curr_Coin|Rem_Coin]) when Amount >= Curr_Coin ->
  New_Change = Change ++ [Curr_Coin],
  get(Amount - Curr_Coin, New_Change, [Curr_Coin|Rem_Coin]);

get(Amount, Change, [Curr_Coin|Rem_Coin]) ->
  get(Amount, Change, Rem_Coin);

get(_, Change, [])->
  Change.