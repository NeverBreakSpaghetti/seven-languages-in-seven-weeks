-module(items_total_prices_test).
-include_lib("eunit/include/eunit.hrl").

empty_list_test() ->
  ?assertEqual([], items_total_price:evaluate([])).
list_with_one_element_test() ->
  ?assertEqual([{milk, 1.0}], items_total_price:evaluate([{milk, 2, 0.5}])).
list_with_more_element_test() ->
  ?assertEqual([{milk, 1.0}, {bread, 100}], items_total_price:evaluate([{milk, 2, 0.5},{bread, 10, 10}])).
