-- Haskell Day1 exercise 2: Write a function that builds two-tuples with all possible combinations of two of the colors black, white, blue, yellow, and red. Note that you should include only one of (black, blue) and (blue, black).
-- usage (in ghci):
--		:load 3.hs
-- 	colourCombinations 
module Main where	
	colours = ["black", "white", "blue", "yellow", "red"] 
	colourCombinations = [(x,y) | x <- colours, y <- colours, x < y]
