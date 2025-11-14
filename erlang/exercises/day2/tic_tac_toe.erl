% Write a program that reads a tic-tac-toe board presented as a list or a tuple of size nine.
% Return the winner (x or o) if a winner has been determined, cat if there are no more possible moves,
% or no_winner if no player has won yet.
-module(tic_tac_toe).
-export([evaluate/1]).

%evaluate({Top_left,Top_center,Top_right,Middle_left,Middle_center,Middle_right,Bottom_left,Bottom_center,Bottom_right}) -> none;
evaluate({Element,Element,Element,_,_,_,_,_,_}) when (Element /= empty) -> Element;
evaluate({_,_,_,Element,Element,Element,_,_,_}) when (Element /= empty) -> Element;
evaluate({_,_,_,_,_,_,Element,Element,Element}) when (Element /= empty) -> Element;
evaluate({Element,_,_,Element,_,_,Element,_,_}) when (Element /= empty) -> Element;
evaluate({_,Element,_,_,Element,_,_,Element,_}) when (Element /= empty) -> Element;
evaluate({_,_,Element,_,_,Element,_,_,Element}) when (Element /= empty) -> Element;
evaluate({Element,_,_,_,Element,_,_,_,Element}) when (Element /= empty) -> Element;
evaluate({_,_,Element,_,Element,_,Element,_,_}) when (Element /= empty) -> Element;
evaluate(Board) ->
  List = tuple_to_list(Board),
  Number_of_x = length([Elem || Elem <- List, Elem =:= x]),
  Number_of_o = length([Elem || Elem <- List, Elem =:= o]),
  if
    abs(Number_of_x-Number_of_o) =:= 1 andalso (Number_of_x =:= 5 orelse Number_of_o =:= 5) -> cat;
    true -> no_winner
  end.


