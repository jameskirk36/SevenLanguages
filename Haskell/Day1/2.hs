-- Haskell Day1 exercise 2: Write a function that takes a list and returns the same list in reverse
-- usage (in ghci):
-- 	:load 2.hs
--		reverseList [1..10]
module Main where
	reverseList :: [Integer] -> [Integer]
	reverseList (h:[]) = [h]
	reverseList (h:t) = reverseList (t) ++ [h]
