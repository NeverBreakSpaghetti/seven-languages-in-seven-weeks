-module(number_of_word_test).
-include_lib("eunit/include/eunit.hrl").

empty_string_test() ->
  ?assertEqual(0, number_of_word:count("")).
one_word_test() ->
  ?assertEqual(1, number_of_word:count("hello")).
two_words_test() ->
  ?assertEqual(2, number_of_word:count("hello world")).
multiple_words_test() ->
  ?assertEqual(5, number_of_word:count("hello world I love pizza")).
