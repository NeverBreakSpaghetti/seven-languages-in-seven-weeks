% Write a function that uses recursion to return the number of words in a string.

-module(number_of_word).
-export([count/1]).

count([]) -> 0;
count(String) -> countHelper(String, is_not_in_word, 0).

countHelper([], _, NumberOfWords)-> NumberOfWords;
countHelper([32 | Tail], _, NumberOfWords) -> countHelper(Tail, is_not_in_word, NumberOfWords);
countHelper([_ | Tail], is_not_in_word, NumberOfWords) -> countHelper(Tail, is_in_word, NumberOfWords + 1);
countHelper([_ | Tail], is_in_word, NumberOfWords) -> countHelper(Tail, is_in_word, NumberOfWords).