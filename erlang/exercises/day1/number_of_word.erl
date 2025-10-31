% Write a function that uses recursion to return the number of words in a string.

-module(number_of_word).
-export([count/1]).

count([]) -> 0;
count(String) -> countHelper(String).

countHelper([])-> 1;
countHelper([32 | Tail]) -> 1 + countHelper(Tail);
countHelper([_ | Tail]) -> 0 + countHelper(Tail).