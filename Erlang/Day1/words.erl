% write a function that uses recursion to return the number of words in a string (string is treated as a list of chars)

% usage:
% c(words).
% words:count("Never send a human to do a machine's job").

-module(words).
-export([count/1]).

count_core(32) -> 1; % match space (32 = ASCII Space)
count_core([Head | Tail]) -> count_core(Head) + count_core(Tail); % recursive call
count_core(_) -> 0.  % any other character

count([]) -> 0; %special case for empty string
count(List) -> count_core(List) + 1.

