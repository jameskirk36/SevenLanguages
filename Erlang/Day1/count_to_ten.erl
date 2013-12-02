% Write a function that uses recursion to count to ten

% usage:
% c(count_to_ten).
% count_to_ten:count_to_ten().

-module(count_to_ten).
-export([count_to_ten/0]).

recursive_count(10) -> [10]; %termination case
recursive_count(Count) -> [Count] ++ recursive_count(Count + 1). %recursive call

count_to_ten() -> recursive_count(1).


