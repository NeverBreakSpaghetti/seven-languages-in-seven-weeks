-module(tic_tac_toe_test).
-include_lib("eunit/include/eunit.hrl").

empty_tuple_test() ->
  ?assertEqual(no_winner, tic_tac_toe:evaluate({empty,empty,empty,empty,empty,empty,empty,empty,empty})).
first_row_win_test() ->
  ?assertEqual(x, tic_tac_toe:evaluate({x,x,x,empty,o,empty,o,o,empty})).
second_row_win_test() ->
  ?assertEqual(o, tic_tac_toe:evaluate({empty,x,x,o,o,o,empty,empty,x})).
third_row_win_test() ->
  ?assertEqual(o, tic_tac_toe:evaluate({x,x,empty,empty,x,empty,o,o,o})).
first_column_win_test() ->
  ?assertEqual(x, tic_tac_toe:evaluate({x,o,empty,x,empty,o,x,empty,empty})).
second_column_win_test() ->
  ?assertEqual(x, tic_tac_toe:evaluate({o,x,o,empty,x,empty,empty,x,empty})).
third_column_win_test() ->
  ?assertEqual(x, tic_tac_toe:evaluate({o,empty,x,empty,o,x,empty,empty,x})).
diagonal_win_test() ->
  ?assertEqual(x, tic_tac_toe:evaluate({x,o,o,empty,x,empty,empty,empty,x})).
anti_diagonal_win_test() ->
  ?assertEqual(x, tic_tac_toe:evaluate({o,o,x,empty,x,empty,x,empty,empty})).
no_winner_test() ->
  ?assertEqual(no_winner, tic_tac_toe:evaluate({x,o,x,empty,empty,empty,empty,empty,empty})).
no_moves_test() ->
  ?assertEqual(cat, tic_tac_toe:evaluate({x,x,o,o,o,x,x,o,x})).
