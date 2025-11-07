% Consider a shopping list that looks like [{item quantity price}, ...].
% Write a list comprehension that builds a list of items of the form
% [{item total_price}, ...], where total_price is quantity times price.
-module(items_total_price).
-export([evaluate/1]).

evaluate(List) -> [{Item, Quantity*Price}|| {Item, Quantity, Price} <- List ].