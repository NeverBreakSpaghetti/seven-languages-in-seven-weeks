% Consider a list of keyword-value tuples, such as [{erlang, "a functional language"}, {ruby, "an OO language"}].
% Write a function that accepts the list and a keyword and returns the associated value for the keyword.

-module(extract_value_by_keyword).
-export([extract/2]).

extract([], _Keyword) -> none;
extract([{Keyword, Value}|_Tail], Keyword) -> Value;
extract([_|Tail], Keyword) -> extract(Tail, Keyword).
