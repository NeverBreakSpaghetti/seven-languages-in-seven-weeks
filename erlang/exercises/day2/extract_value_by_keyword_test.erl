-module(extract_value_by_keyword_test).
-include_lib("eunit/include/eunit.hrl").

empty_list_test() ->
  ?assertEqual(none, extract_value_by_keyword:extract([], ruby)).
existing_first_keyword_test() ->
  ?assertEqual("a functional language", extract_value_by_keyword:extract([{erlang, "a functional language"}, {ruby, "an OO language"}], erlang)).
existing_last_keyword_test() ->
  ?assertEqual("an OO language", extract_value_by_keyword:extract([{erlang, "a functional language"}, {ruby, "an OO language"}], ruby)).
not_existing_keyword_test() ->
  ?assertEqual(none, extract_value_by_keyword:extract([{erlang, "a functional language"}, {ruby, "an OO language"}], not_existing_keyword)).
