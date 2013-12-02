% Consider a shopping list that looks like [{item, quantity, price}, ...]. Write a list comprehension that builds a list of items of the form [{item, total_price}, ...], where total_price is quantity times price

% usage:
% c(shoppinglist).
% List = [{eggs, 2, 0.5}, {bread, 1, 2}, {bananas, 50, 0.25}].
% shoppinglist:total(List).

-module(shoppinglist).
-export([total/1]).

total(ShoppingList) -> [{Item, Quantity*Price} || {Item, Quantity, Price} <- ShoppingList ].

