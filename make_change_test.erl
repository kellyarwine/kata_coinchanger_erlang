-module(make_change_test).
-include_lib("eunit/include/eunit.hrl").

coinchanger_1_test() ->
  [{ "returns [1] when 1 is input",
      ?assertEqual(make_change:get(1), [1])
  }].

coinchanger_2_test() ->
  [{ "returns [1,1] when 2 is input",
      ?assertEqual(make_change:get(2), [1,1])
  }].

coinchanger_3_test() ->
  [{ "returns [1,1,1] when 3 is input",
      ?assertEqual(make_change:get(3), [1,1,1])
  }].

coinchanger_4_test() ->
  [{ "returns [5] when 5 is input",
      ?assertEqual(make_change:get(5), [5])
  }].

coinchanger_5_test() ->
  [{ "returns [5,1] when 6 is input",
      ?assertEqual(make_change:get(6), [5,1])
  }].

coinchanger_6_test() ->
  [{ "returns [10] when 10 is input",
      ?assertEqual(make_change:get(10), [10])
  }].

coinchanger_7_test() ->
  [{ "returns [10,5,1] when 16 is input",
      ?assertEqual(make_change:get(16), [10,5,1])
  }].

coinchanger_8_test() ->
  [{ "returns [25] when 25 is input",
      ?assertEqual(make_change:get(25), [25])
  }].

coinchanger_9_test() ->
  [{ "returns [25,25,25,10,10,1,1,1,1] when 99 is input",
      ?assertEqual(make_change:get(99), [25,25,25,10,10,1,1,1,1])
  }].
