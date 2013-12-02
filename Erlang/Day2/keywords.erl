% Write a function that accepts the list and a keyword and returns the associated value for the keyword
% for example: [{erlang, "a functional language"}, {ruby, "an OO language"}]

%usage:
% c(keywords).
% List = [{erlang, "a functional language"}, {ruby, "an OO language"}].
% keywords:lookup(List, erlang).
% keywords:lookup(List, ruby).  

-module(keywords).
-export([lookup/2]).

lookup(ListOfWords, WordToFind) -> [Value || {Key, Value} <- ListOfWords, Key == WordToFind]. 
